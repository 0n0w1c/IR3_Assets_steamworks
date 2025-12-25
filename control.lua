local ir3_asset_packs = {
    "IndustrialRevolution3Assets1",
    "IndustrialRevolution3Assets2",
    "IndustrialRevolution3Assets3",
    "IndustrialRevolution3Assets4"
}

for _, asset_pack in ipairs(ir3_asset_packs) do
    if not script.active_mods[asset_pack] then
        return
    end
end

script.on_event(defines.events.on_entity_damaged, function(event)
    local cause = event.cause
    local damage_type = event.damage_type

    if cause and cause.valid and cause.name == "monowheel" and damage_type.name == "impact" then
        local entity = event.entity
        entity.health = entity.health + event.final_damage_amount
    end
end)

script.on_event("teleport-vehicle", function(event)
    local distance = 2

    local player = game.get_player(event.player_index)
    if not (player and player.valid) then return end

    local vehicle = player.vehicle
    if not (vehicle and vehicle.valid and vehicle.name == "monowheel") then return end

    local burner = vehicle.burner
    if not (burner and burner.currently_burning) then return end

    local reverse_orientation = (vehicle.orientation + 0.5) % 1
    local angle               = reverse_orientation * 2 * math.pi
    local dx                  = math.sin(angle)
    local dy                  = -math.cos(angle)

    local center              = {
        x = vehicle.position.x + dx * distance,
        y = vehicle.position.y + dy * distance
    }

    local box                 = vehicle.prototype.collision_box
    local width               = box.right_bottom.x - box.left_top.x
    local height              = box.right_bottom.y - box.left_top.y

    local search_box          = {
        left_top     = { x = center.x - width / 2, y = center.y - height / 2 },
        right_bottom = { x = center.x + width / 2, y = center.y + height / 2 }
    }

    local destination         = vehicle.surface.find_non_colliding_position_in_box(vehicle.name, search_box, 0.1)
    if destination then
        vehicle.teleport(destination)
    end
end)

script.on_event("rotate-vehicle", function(event)
    local player = game.get_player(event.player_index)
    if not player or not player.valid then return end

    local vehicle = player.vehicle
    if not vehicle or not vehicle.valid then return end

    if vehicle.name ~= "monowheel" then return end

    local current = vehicle.orientation or 0
    local eight_directions =
    {
        0.000, -- N
        0.125, -- NE
        0.250, -- E
        0.375, -- SE
        0.500, -- S
        0.625, -- SW
        0.750, -- W
        0.875  -- NW
    }

    local closest = eight_directions[1]
    local min_diff = math.abs(current - closest)

    for _, dir in ipairs(eight_directions) do
        local diff = math.abs(current - dir)
        if diff > 0.5 then diff = 1 - diff end
        if diff < min_diff then
            min_diff = diff
            closest = dir
        end
    end

    vehicle.orientation = closest
end)
