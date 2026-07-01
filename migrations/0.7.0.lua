local steam_beacon_name = "steam-beacon"

local helper_entity_names = {
    "steam-beacon-source",
    "nsb-internal-manager",
    "nsb-internal-monitor",
    "nsb-internal-mimic",
}

local function existing_entity_names(names)
    local result = {}
    for _, name in pairs(names) do
        if prototypes.entity[name] then
            table.insert(result, name)
        end
    end
    return result
end

local function quality_name(entity)
    local ok, quality = pcall(function() return entity.quality end)
    if ok and quality then return quality.name end
    return nil
end

local function last_user_index(entity)
    local ok, user = pcall(function() return entity.last_user end)
    if ok and user and user.valid then return user.index end
    return nil
end

local function module_contents(entity)
    local inventory = entity.get_module_inventory()
    if not (inventory and inventory.valid) then
        return {}
    end

    return inventory.get_contents()
end

local function restore_modules(entity, modules)
    local inventory = entity.get_module_inventory()
    if not (inventory and inventory.valid) then
        return
    end

    for _, stack in pairs(modules) do
        inventory.insert {
            name = stack.name,
            count = stack.count,
            quality = stack.quality,
        }
    end
end

local function capture_steam_beacon(beacon)
    return {
        surface = beacon.surface,
        position = { x = beacon.position.x, y = beacon.position.y },
        direction = beacon.direction,
        force = beacon.force,
        quality = quality_name(beacon),
        player = last_user_index(beacon),
        modules = module_contents(beacon),
    }
end

local function destroy_entity(entity)
    if entity and entity.valid then
        entity.destroy { raise_destroy = false }
    end
end

local function destroy_helpers_at(surface, position, force, helper_names)
    if #helper_names == 0 then
        return
    end

    local helpers = surface.find_entities_filtered {
        name = helper_names,
        position = position,
        force = force,
    }

    for _, helper in pairs(helpers) do
        destroy_entity(helper)
    end
end

local function recreate_steam_beacon(spec)
    local beacon = spec.surface.create_entity {
        name = steam_beacon_name,
        position = spec.position,
        direction = spec.direction,
        force = spec.force,
        quality = spec.quality,
        player = spec.player,
        raise_built = false,
        create_build_effect_smoke = false,
        spawn_decorations = false,
        move_stuck_players = true,
    }

    if beacon and beacon.valid then
        restore_modules(beacon, spec.modules)
    end
end

if not prototypes.entity[steam_beacon_name] then
    return
end

local helper_names = existing_entity_names(helper_entity_names)

for _, surface in pairs(game.surfaces) do
    local specs = {}
    local beacons = surface.find_entities_filtered {
        name = steam_beacon_name,
        type = "beacon",
    }

    for _, beacon in pairs(beacons) do
        if beacon and beacon.valid then
            table.insert(specs, capture_steam_beacon(beacon))
        end
    end

    for _, spec in pairs(specs) do
        destroy_helpers_at(spec.surface, spec.position, spec.force, helper_names)
    end

    for _, beacon in pairs(beacons) do
        destroy_entity(beacon)
    end

    for _, spec in pairs(specs) do
        recreate_steam_beacon(spec)
    end
end
