local crafting_categories = { "basic-crushing" }
local circuit_connector = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].circuit_connector)

if mods["crushing-industry"] then
    crafting_categories = {
        "basic-crushing",
        "basic-crushing-or-crafting",
        "basic-crushing-or-hand-crafting"
    }
end

data:extend({
    {
        type                      = "assembling-machine",
        name                      = "steam-crusher",

        circuit_connector         = circuit_connector,
        circuit_wire_max_distance = default_circuit_wire_max_distance,

        graphics_set              = {
            animation = {
                layers = {
                    {
                        animation_speed = 1,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/grinders/copper-grinder-base.png",
                        frame_count = 30,
                        height = 192,
                        line_length = 5,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, 0 },
                        width = 192,
                    },
                    {
                        animation_speed = 1,
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/copper-shadow.png",
                        height = 192,
                        priority = "high",
                        repeat_count = 30,
                        scale = 0.5,
                        shift = { 0.5, 0 },
                        width = 256,
                    }
                }
            }
        },
        close_sound               = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.5
        },
        collision_box             = {
            { -1.25, -1.25 },
            { 1.25,  1.25 }
        },
        corpse                    = "medium-remnants",
        crafting_categories       = crafting_categories,
        crafting_speed            = 0.75,
        damaged_trigger_effect    = {
            {
                damage_type_filters = {
                    "fire",
                    "impact"
                },
                frame_speed = 1,
                frame_speed_deviation = 0.1,
                initial_height = 0.5,
                initial_vertical_speed = 0.07,
                initial_vertical_speed_deviation = 0.1,
                offset_deviation = {
                    { -0.5, -0.5 },
                    { 0.5,  0.5 }
                },
                particle_name = "copper-particle",
                probability = 0.87434554973821985,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            },
            {
                damage_type_filters = {
                    "fire",
                    "impact"
                },
                frame_speed = 1,
                frame_speed_deviation = 0.1,
                initial_height = 0.5,
                initial_vertical_speed = 0.07,
                initial_vertical_speed_deviation = 0.1,
                offset_deviation = {
                    { -0.5, -0.5 },
                    { 0.5,  0.5 }
                },
                particle_name = "wood-particle",
                probability = 0.1256544502617801,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        dying_explosion           = "steam-crusher-explosion",
        energy_source             = {
            fluid_box = {
                volume = 200,
                filter = "steam",
                pipe_connections = {
                    {
                        direction = defines.direction.east,
                        position = { 1, 0 },
                        flow_direction = "input-output",
                        connection_category = "steam"
                    },
                    {
                        direction = defines.direction.west,
                        position = { -1, 0 },
                        flow_direction = "input-output",
                        connection_category = "steam"
                    }
                },
                pipe_covers = PIPE_COVERS_STEAM,
                pipe_picture = PIPE_PICTURES_STEAM,
                production_type = "input-output",
                secondary_draw_orders = { north = -1 }
            },
            light_flicker = { color = { r = 0, g = 0, b = 0, a = 0 } },
            maximum_temperature = 165,
            scale_fluid_usage = true,
            smoke = {
                {
                    name = "steam",
                    north_position = { -1.2375, -1 },
                    east_position = { -0.4125, -1.55 },
                    south_position = { -1.2375, -1 },
                    west_position = { -0.4125, -1.55 },
                    frequency = 2,
                    offset = 0,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                },
                {
                    name = "steam",
                    north_position = { 1.3625, -1 },
                    east_position = { 0.5375, -1.55 },
                    south_position = { 1.3625, -1 },
                    west_position = { 0.5375, -1.55 },
                    frequency = 2,
                    offset = 0.125,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                },
                {
                    name = "steam",
                    north_position = { -1.2375, -0.3 },
                    east_position = { -0.4125, 0.25 },
                    south_position = { -1.2375, -0.3 },
                    west_position = { -0.4125, 0.25 },
                    frequency = 2,
                    offset = 0.25,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                },
                {
                    name = "steam",
                    north_position = { 1.3625, -0.3 },
                    east_position = { 0.5375, 0.25 },
                    south_position = { 1.3625, -0.3 },
                    west_position = { 0.5375, 0.25 },
                    frequency = 2,
                    offset = 0.375,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                }
            },
            type = "fluid"
        },
        energy_usage              = "125kW",
        entity_info_icon_shift    = { 0, -0.45 },
        fast_replaceable_group    = nil,
        flags                     = {
            "placeable-player",
            "placeable-neutral",
            "player-creation"
        },
        icon                      = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-grinder.png",
        icon_size                 = 64,
        max_health                = 250,
        minable                   = { mining_time = 0.2, result = "steam-crusher" },
        mined_sound               = {
            filename = "__base__/sound/deconstruct-bricks.ogg"
        },
        allowed_effects           = { "speed", "productivity", "consumption", "pollution", "quality" },
        module_slots              = 2,
        next_upgrade              = nil,
        open_sound                = {
            filename = "__base__/sound/machine-open.ogg",
            volume = 0.5
        },
        placeable_by              = { item = "steam-crusher", count = 1 },
        result_inventory_size     = 2,
        selection_box             = {
            { -1.5, -1.5 },
            { 1.5,  1.5 }
        },
        source_inventory_size     = 1,
        vehicle_impact_sound      = {
            game_controller_vibration_data = {
                duration = 150,
                low_frequency_vibration_intensity = 0.9
            },
            switch_vibration_data = {
                filename = "__base__/sound/car-metal-impact.bnvib"
            },
            variations = {
                {
                    filename = "__base__/sound/car-metal-impact-2.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-3.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-4.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-5.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-6.ogg",
                    volume = 0.5
                }
            }
        },
        working_sound             = {
            fade_in_ticks = 5,
            fade_out_ticks = 30,
            sound = {
                filename = "__IndustrialRevolution3Assets1__/sound/grinder.ogg",
                volume = 0.75
            }
        }
    }
})
