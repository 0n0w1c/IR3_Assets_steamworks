local ir3_asset_packs = {
    "IndustrialRevolution3Assets1",
    "IndustrialRevolution3Assets2",
    "IndustrialRevolution3Assets3",
    "IndustrialRevolution3Assets4",
}

for _, asset_pack in ipairs(ir3_asset_packs) do
    if not script.active_mods[asset_pack] then
        return
    end
end

---@alias SteamworksEventFilter table<string, any>

-- Monowheel -----------------------------------------------------------------

local monowheel_name = "monowheel"
local teleport_distance = 2
local octant_orientations = {
    0.000, -- N
    0.125, -- NE
    0.250, -- E
    0.375, -- SE
    0.500, -- S
    0.625, -- SW
    0.750, -- W
    0.875, -- NW
}

---@param entity LuaEntity?
---@return boolean
local function is_valid_monowheel(entity)
    return entity ~= nil and entity.valid and entity.name == monowheel_name
end

---@param event EventData.on_entity_damaged
local function refund_monowheel_impact_damage(event)
    local cause = event.cause
    local damage_type = event.damage_type

    if is_valid_monowheel(cause) and damage_type.name == "impact" and event.entity.health then
        event.entity.health = event.entity.health + event.final_damage_amount
    end
end

---@param event EventData.CustomInputEvent
---@return LuaEntity?
local function get_player_vehicle(event)
    local player = game.get_player(event.player_index)
    if not (player and player.valid) then
        return nil
    end

    return player.vehicle
end

---@param event EventData.CustomInputEvent
local function teleport_monowheel_backwards(event)
    local vehicle = get_player_vehicle(event)
    if vehicle == nil then
        return
    end

    if not is_valid_monowheel(vehicle) then
        return
    end

    local burner = vehicle.burner
    if not (burner and burner.currently_burning) then
        return
    end

    local reverse_orientation = (vehicle.orientation + 0.5) % 1
    local angle = reverse_orientation * 2 * math.pi
    local dx = math.sin(angle)
    local dy = -math.cos(angle)
    local center = {
        x = vehicle.position.x + dx * teleport_distance,
        y = vehicle.position.y + dy * teleport_distance,
    }

    local collision_box = vehicle.prototype.collision_box
    local width = collision_box.right_bottom.x - collision_box.left_top.x
    local height = collision_box.right_bottom.y - collision_box.left_top.y
    local search_box = {
        left_top = {
            x = center.x - width / 2,
            y = center.y - height / 2,
        },
        right_bottom = {
            x = center.x + width / 2,
            y = center.y + height / 2,
        },
    }

    local destination = vehicle.surface.find_non_colliding_position_in_box(vehicle.name, search_box, 0.1)
    if destination then
        vehicle.teleport(destination)
    end
end

---@param orientation double
---@return double
local function nearest_octant_orientation(orientation)
    local closest = octant_orientations[1]
    local minimum_difference = math.abs(orientation - closest)

    for _, candidate in ipairs(octant_orientations) do
        local difference = math.abs(orientation - candidate)
        if difference > 0.5 then
            difference = 1 - difference
        end

        if difference < minimum_difference then
            closest = candidate
            minimum_difference = difference
        end
    end

    return closest
end

---@param event EventData.CustomInputEvent
local function rotate_monowheel_to_nearest_octant(event)
    local vehicle = get_player_vehicle(event)
    if vehicle == nil then
        return
    end

    if not is_valid_monowheel(vehicle) then
        return
    end

    vehicle.orientation = nearest_octant_orientation(vehicle.orientation or 0)
end

script.on_event(defines.events.on_entity_damaged, refund_monowheel_impact_damage)
script.on_event("teleport-vehicle", teleport_monowheel_backwards)
script.on_event("rotate-vehicle", rotate_monowheel_to_nearest_octant)

-- Steam beacon ---------------------------------------------------------------

local steam_beacon_name = "steam-beacon"
local steam_beacon_source_name = "steam-beacon-source"
local steam_beacon_manager_name = "steamworks-steam-beacon-manager"
local steam_beacon_monitor_name = "steamworks-steam-beacon-monitor"
local steam_beacon_mimic_name = "steamworks-steam-beacon-mimic"
local steam_beacon_internal_item = "steamworks-steam-beacon-internal-item"

local steam_beacon_event_filter = {
    { filter = "name", name = steam_beacon_name },
}
---@type SignalID
local steam_beacon_signal = {
    type = "item",
    name = steam_beacon_internal_item,
}

---@class SteamBeaconMetadata
---@field beacon LuaEntity
---@field source LuaEntity
---@field manager LuaEntity
---@field monitor LuaEntity
---@field mimic LuaEntity

---@class SteamworksStorage
---@field steam_beacons table<uint, SteamBeaconMetadata>
---@field steam_beacon_deathrattles table<uint, SteamBeaconMetadata>

---@return SteamworksStorage
local function steamworks_storage()
    local state = storage --[[@as SteamworksStorage]]
    state.steam_beacons = state.steam_beacons or {}
    state.steam_beacon_deathrattles = state.steam_beacon_deathrattles or {}
    return state
end

---@return SteamworksStorage
local function ensure_steam_beacon_storage()
    return steamworks_storage()
end

---@param entity LuaEntity?
local function safe_destroy(entity)
    if entity and entity.valid then
        entity.destroy()
    end
end

---@return table
local function steam_beacon_low_status()
    return {
        diode = defines.entity_status_diode.red,
        label = { "", "Needs 165°C steam" },
    }
end

---@param beacon LuaEntity
---@param name string
---@return LuaEntity?
local function find_steam_beacon_helper(beacon, name)
    local entities = beacon.surface.find_entities_filtered {
        name = name,
        position = beacon.position,
        force = beacon.force,
        limit = 1,
    }

    return entities[1]
end

---@param beacon LuaEntity
---@param name string
---@return LuaEntity?
local function create_or_find_steam_beacon_helper(beacon, name)
    local helper = find_steam_beacon_helper(beacon, name)
    if helper and helper.valid then
        return helper
    end

    return beacon.surface.create_entity {
        name = name,
        position = beacon.position,
        quality = beacon.quality,
        force = beacon.force,
        raise_built = false,
    }
end

---@param section LuaLogisticSection?
local function clear_section(section)
    if not section then
        return
    end

    for slot_index = 1, section.filters_count do
        section.clear_slot(slot_index)
    end
end

---@param mimic_behavior LuaConstantCombinatorControlBehavior
---@return LuaLogisticSection?
local function ensure_mimic_module_section(mimic_behavior)
    local sections = mimic_behavior.sections
    if not sections then
        return nil
    end

    if not sections[2] then
        local section = mimic_behavior.add_section()
        section.multiplier = -1
        return section
    end

    sections[2].multiplier = -1
    return sections[2]
end

---@class SteamworksModuleStack
---@field name string
---@field count integer
---@field quality? string

---@param inventory LuaInventory?
---@return SteamworksModuleStack[]
local function module_inventory_contents(inventory)
    if not (inventory and inventory.valid) then
        return {}
    end

    local contents = inventory.get_contents()
    ---@cast contents SteamworksModuleStack[]
    return contents
end

---@param beacon LuaEntity
---@param source LuaEntity
---@param mimic LuaEntity
local function mirror_steam_beacon_modules(beacon, source, mimic)
    local beacon_inventory = beacon.get_module_inventory()
    local source_inventory = source.get_module_inventory()
    if not (beacon_inventory and source_inventory and mimic and mimic.valid) then
        return
    end

    local mimic_behavior = mimic.get_or_create_control_behavior()
    ---@cast mimic_behavior LuaConstantCombinatorControlBehavior
    local mimic_module_section = ensure_mimic_module_section(mimic_behavior)
    if not mimic_module_section then
        return
    end

    source_inventory.clear()
    clear_section(mimic_module_section)

    for slot_index, item_stack in ipairs(module_inventory_contents(beacon_inventory)) do
        source_inventory.insert {
            name = item_stack.name,
            quality = item_stack.quality,
            count = item_stack.count,
        }
        mimic_module_section.set_slot(slot_index, {
            value = {
                type = "item",
                name = item_stack.name,
                quality = item_stack.quality,
            },
            min = item_stack.count,
        })
    end
end

---@param entity LuaEntity
---@return LuaWireConnector?
local function get_green_wire_connector(entity)
    return entity.get_wire_connector(defines.wire_connector_id.circuit_green, true)
end

---@param source LuaEntity
---@param manager LuaEntity
---@param monitor LuaEntity
---@param mimic LuaEntity
local function connect_steam_beacon_circuits(source, manager, monitor, mimic)
    local manager_green = get_green_wire_connector(manager)
    local source_green = get_green_wire_connector(source)
    local monitor_green = get_green_wire_connector(monitor)
    local mimic_green = get_green_wire_connector(mimic)

    if not (manager_green and source_green and monitor_green and mimic_green) then
        return
    end

    manager_green.connect_to(source_green, false, defines.wire_origin.script)
    manager_green.connect_to(monitor_green, false, defines.wire_origin.script)
    manager_green.connect_to(mimic_green, false, defines.wire_origin.script)
end

---@param source LuaEntity
local function configure_steam_beacon_source(source)
    local behavior = source.get_or_create_control_behavior()
    ---@cast behavior LuaAssemblingMachineControlBehavior
    behavior.circuit_read_working = true
    behavior.circuit_working_signal = steam_beacon_signal
end

---@param beacon LuaEntity
---@param monitor LuaEntity
local function configure_steam_beacon_monitor(beacon, monitor)
    local proxy = monitor --[[@as any]]
    proxy.proxy_target_entity = beacon
    proxy.proxy_target_inventory = defines.inventory.beacon_modules
end

---@param mimic LuaEntity
local function configure_steam_beacon_mimic(mimic)
    local behavior = mimic.get_or_create_control_behavior()
    ---@cast behavior LuaConstantCombinatorControlBehavior
    local sections = behavior.sections
    if not sections then
        return
    end

    sections[1].set_slot(1, {
        value = {
            type = "item",
            name = steam_beacon_internal_item,
            quality = "normal",
        },
        min = -1,
    })
    sections[1].active = false

    ensure_mimic_module_section(behavior)
end

---@param manager LuaEntity
local function configure_steam_beacon_manager(manager)
    local behavior = manager.get_or_create_control_behavior()
    ---@cast behavior LuaAssemblingMachineControlBehavior
    behavior.circuit_enable_disable = true
    behavior.circuit_condition = {
        comparator = "≠",
        constant = 0,
        first_signal = { name = "signal-anything", type = "virtual" },
    }
end

---@param metadata SteamBeaconMetadata
local function setup_steam_beacon_circuit(metadata)
    connect_steam_beacon_circuits(metadata.source, metadata.manager, metadata.monitor, metadata.mimic)
    configure_steam_beacon_source(metadata.source)
    configure_steam_beacon_monitor(metadata.beacon, metadata.monitor)
    configure_steam_beacon_mimic(metadata.mimic)
    configure_steam_beacon_manager(metadata.manager)
    mirror_steam_beacon_modules(metadata.beacon, metadata.source, metadata.mimic)
end

---@param metadata SteamBeaconMetadata?
local function destroy_steam_beacon_helpers(metadata)
    if not metadata then
        return
    end

    safe_destroy(metadata.source)
    safe_destroy(metadata.manager)
    safe_destroy(metadata.monitor)
    safe_destroy(metadata.mimic)
end

---@param metadata SteamBeaconMetadata?
---@return boolean
local function valid_steam_beacon_metadata(metadata)
    if not metadata then
        return false
    end

    local valid = metadata.beacon and metadata.beacon.valid
        and metadata.source and metadata.source.valid
        and metadata.manager and metadata.manager.valid
        and metadata.monitor and metadata.monitor.valid
        and metadata.mimic and metadata.mimic.valid

    if not valid then
        destroy_steam_beacon_helpers(metadata)
    end

    return valid
end

---@param manager LuaEntity
---@param metadata SteamBeaconMetadata
local function register_steam_beacon_sacrifice(manager, metadata)
    if not (manager and manager.valid) then
        return
    end

    local state = ensure_steam_beacon_storage()

    local inventory = manager.get_inventory(defines.inventory.crafter_input)
    if not inventory then
        return
    end

    inventory.clear()
    inventory.insert { name = steam_beacon_internal_item, count = 1, health = 0.5 }

    if inventory[1] and inventory[1].valid_for_read then
        local registration_number = script.register_on_object_destroyed(inventory[1].item)
        state.steam_beacon_deathrattles[registration_number] = metadata
    end
end

---@param beacon LuaEntity
---@param enabled boolean
local function set_steam_beacon_enabled(beacon, enabled)
    beacon.disabled_by_script = not enabled
    beacon.custom_status = enabled and nil or steam_beacon_low_status()
end

---@param metadata SteamBeaconMetadata
---@param enabled boolean
local function set_steam_beacon_mimic_working_section(metadata, enabled)
    local behavior = metadata.mimic.get_or_create_control_behavior()
    ---@cast behavior LuaConstantCombinatorControlBehavior
    local sections = behavior.sections
    if sections and sections[1] then
        sections[1].active = enabled
    end
end

---@param metadata SteamBeaconMetadata
---@return boolean success
local function process_steam_beacon_circuit(metadata)
    if not valid_steam_beacon_metadata(metadata) then
        return false
    end

    local beacon_state = metadata.manager.get_signal(steam_beacon_signal, defines.wire_connector_id.circuit_green)

    if beacon_state ~= 0 then
        local enabled = beacon_state == 1
        set_steam_beacon_enabled(metadata.beacon, enabled)
        set_steam_beacon_mimic_working_section(metadata, enabled)
    elseif not metadata.beacon.disabled_by_script then
        metadata.beacon.custom_status = nil
    end

    mirror_steam_beacon_modules(metadata.beacon, metadata.source, metadata.mimic)
    register_steam_beacon_sacrifice(metadata.manager, metadata)

    return true
end

---@param beacon LuaEntity?
local function unregister_steam_beacon(beacon)
    if not beacon then
        return
    end

    local unit_number = beacon.unit_number
    if not unit_number then
        return
    end

    local state = ensure_steam_beacon_storage()
    local metadata = state.steam_beacons[unit_number]
    if not metadata then
        return
    end

    destroy_steam_beacon_helpers(metadata)
    state.steam_beacons[unit_number] = nil
end

---@param beacon LuaEntity?
local function register_steam_beacon(beacon)
    if not (beacon and beacon.valid and beacon.name == steam_beacon_name) then
        return
    end

    local unit_number = beacon.unit_number
    if not unit_number then
        return
    end

    local state = ensure_steam_beacon_storage()

    local source = create_or_find_steam_beacon_helper(beacon, steam_beacon_source_name)
    local manager = create_or_find_steam_beacon_helper(beacon, steam_beacon_manager_name)
    local monitor = create_or_find_steam_beacon_helper(beacon, steam_beacon_monitor_name)
    local mimic = create_or_find_steam_beacon_helper(beacon, steam_beacon_mimic_name)
    if not (source and source.valid and manager and manager.valid and monitor and monitor.valid and mimic and mimic.valid) then
        return
    end

    set_steam_beacon_enabled(beacon, false)

    local metadata = {
        beacon = beacon,
        source = source,
        manager = manager,
        monitor = monitor,
        mimic = mimic,
    }
    state.steam_beacons[unit_number] = metadata

    setup_steam_beacon_circuit(metadata)
    register_steam_beacon_sacrifice(manager, metadata)
end

local function rebuild_steam_beacon_storage()
    local state = ensure_steam_beacon_storage()

    for _, metadata in pairs(state.steam_beacons) do
        destroy_steam_beacon_helpers(metadata)
    end

    state.steam_beacons = {}
    state.steam_beacon_deathrattles = {}

    for _, surface in pairs(game.surfaces) do
        local beacons = surface.find_entities_filtered { name = steam_beacon_name, type = "beacon" }
        for _, beacon in pairs(beacons) do
            register_steam_beacon(beacon)
        end
    end
end

---@param event EventData.on_built_entity|EventData.on_robot_built_entity|EventData.script_raised_built|EventData.script_raised_revive
local function on_steam_beacon_created(event)
    register_steam_beacon(event.entity)
end

---@param event EventData.on_player_mined_entity|EventData.on_robot_mined_entity|EventData.script_raised_destroy|EventData.on_entity_died
local function on_steam_beacon_removed(event)
    unregister_steam_beacon(event.entity)
end

---@param event EventData.on_marked_for_deconstruction
local function on_steam_beacon_marked_for_deconstruction(event)
    local unit_number = event.entity.unit_number
    if not unit_number then
        return
    end

    local metadata = ensure_steam_beacon_storage().steam_beacons[unit_number]
    if metadata and metadata.source and metadata.source.valid then
        metadata.source.disabled_by_script = true
    end
end

---@param event EventData.on_cancelled_deconstruction
local function on_steam_beacon_cancelled_deconstruction(event)
    local unit_number = event.entity.unit_number
    if not unit_number then
        return
    end

    local metadata = ensure_steam_beacon_storage().steam_beacons[unit_number]
    if metadata and metadata.source and metadata.source.valid then
        metadata.source.disabled_by_script = false
    end

    register_steam_beacon(event.entity)
end

---@param event EventData.on_object_destroyed
local function on_steam_beacon_deathrattle(event)
    local state = ensure_steam_beacon_storage()
    local metadata = state.steam_beacon_deathrattles[event.registration_number]
    if not metadata then
        return
    end

    state.steam_beacon_deathrattles[event.registration_number] = nil
    process_steam_beacon_circuit(metadata)
end

---@param event_name string
---@param handler function
---@param filters SteamworksEventFilter[]?
local function register_optional_event(event_name, handler, filters)
    local event_id = defines.events[event_name] --[[@as defines.events?]]
    if event_id then
        script.on_event(event_id, handler, filters)
    end
end

script.on_init(rebuild_steam_beacon_storage)
script.on_configuration_changed(rebuild_steam_beacon_storage)
script.on_event(defines.events.on_object_destroyed, on_steam_beacon_deathrattle)

register_optional_event("on_built_entity", on_steam_beacon_created, steam_beacon_event_filter)
register_optional_event("on_robot_built_entity", on_steam_beacon_created, steam_beacon_event_filter)
register_optional_event("on_space_platform_built_entity", on_steam_beacon_created, steam_beacon_event_filter)
register_optional_event("script_raised_built", on_steam_beacon_created, steam_beacon_event_filter)
register_optional_event("script_raised_revive", on_steam_beacon_created, steam_beacon_event_filter)

register_optional_event("on_player_mined_entity", on_steam_beacon_removed, steam_beacon_event_filter)
register_optional_event("on_robot_mined_entity", on_steam_beacon_removed, steam_beacon_event_filter)
register_optional_event("on_space_platform_mined_entity", on_steam_beacon_removed, steam_beacon_event_filter)
register_optional_event("script_raised_destroy", on_steam_beacon_removed, steam_beacon_event_filter)
register_optional_event("on_entity_died", on_steam_beacon_removed, steam_beacon_event_filter)

register_optional_event("on_marked_for_deconstruction", on_steam_beacon_marked_for_deconstruction,
    steam_beacon_event_filter)
register_optional_event("on_cancelled_deconstruction", on_steam_beacon_cancelled_deconstruction,
    steam_beacon_event_filter)
