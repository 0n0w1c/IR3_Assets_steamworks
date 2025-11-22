data:extend({
    {
        type = "lab",
        name = "steam-lab",

        collision_box = {
            { -1.49, -1.49 },
            { 1.49,  1.49 }
        },
        corpse = "medium-remnants",
        damaged_trigger_effect = {
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
                probability = 0.8781725888324873,
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
                probability = 0.1218274111675127,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        dying_explosion = "steam-lab-explosion",
        energy_source = {
            fluid_box = {
                volume = 200,
                filter = "steam",
                pipe_connections = {
                    {
                        direction = defines.direction.north,
                        position = { 0, -1 },
                        flow_direction = "input-output",
                        connection_category = "steam"
                    },
                    {
                        direction = defines.direction.east,
                        position = { 1, 0 },
                        flow_direction = "input-output",
                        connection_category = "steam"
                    },
                    {
                        direction = defines.direction.south,
                        position = { 0, 1 },
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
                production_type = "input-output",
                secondary_draw_orders = {
                    north = -1
                }
            },
            light_flicker = { color = { r = 0, g = 0, b = 0, a = 0 } },
            maximum_temperature = 165,
            scale_fluid_usage = true,
            type = "fluid"
        },
        energy_usage = "125kW",
        fast_replaceable_group = nil,
        flags = {
            "placeable-player",
            "placeable-neutral",
            "player-creation"
        },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-lab.png",
        icon_size = 64,
        inputs = {},
        allowed_effects = { "speed", "productivity", "consumption", "pollution", "quality" },
        module_slots = 2,
        icons_positioning = {
            {
                inventory_index = 3,
                shift = { 0, 0.9 },
            },
            {
                inventory_index = 2,
                shift = { 0, 0 },
                max_icons_per_row = 6,
                separation_multiplier = 0.90909090909091,
            },
        },
        max_health = 250,
        minable = { mining_time = 0.2, result = "steam-lab" },
        next_upgrade = nil,
        off_animation = {
            layers = {
                {
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/misc/bronze-telescope-shadow-base.png",
                    height = 256,
                    priority = "high",
                    repeat_count = 64,
                    scale = 0.5,
                    shift = { 0.5, 0 },
                    width = 256,
                },
                {
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets4__/graphics/entities/machines/labs/copper-lab-shadow-working.png",
                    frame_count = 64,
                    height = 160,
                    line_length = 8,
                    priority = "high",
                    scale = 0.5,
                    shift = { 1.5, 0.25 },
                    width = 256,
                },
                {
                    animation_speed = 0.5,
                    filename = "__IndustrialRevolution3Assets4__/graphics/entities/machines/labs/copper-lab-base.png",
                    height = 256,
                    priority = "high",
                    repeat_count = 64,
                    scale = 0.5,
                    shift = { 0, 0 },
                    width = 192,
                },
                {
                    animation_speed = 0.5,
                    filename = "__IndustrialRevolution3Assets4__/graphics/entities/machines/labs/copper-lab-working.png",
                    frame_count = 64,
                    height = 192,
                    line_length = 8,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0, -0.5 },
                    width = 192,
                }
            }
        },
        on_animation = {
            layers = {
                {
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/misc/bronze-telescope-shadow-base.png",
                    height = 256,
                    priority = "high",
                    repeat_count = 64,
                    scale = 0.5,
                    shift = { 0.5, 0 },
                    width = 256,
                },
                {
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets4__/graphics/entities/machines/labs/copper-lab-shadow-working.png",
                    frame_count = 64,
                    height = 160,
                    line_length = 8,
                    priority = "high",
                    scale = 0.5,
                    shift = { 1.5, 0.25 },
                    width = 256,
                },
                {
                    animation_speed = 0.5,
                    filename = "__IndustrialRevolution3Assets4__/graphics/entities/machines/labs/copper-lab-base.png",
                    height = 256,
                    priority = "high",
                    repeat_count = 64,
                    scale = 0.5,
                    shift = { 0, 0 },
                    width = 192,
                },
                {
                    animation_speed = 0.5,
                    filename = "__IndustrialRevolution3Assets4__/graphics/entities/machines/labs/copper-lab-working.png",
                    frame_count = 64,
                    height = 192,
                    line_length = 8,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0, -0.5 },
                    width = 192,
                }
            }
        },
        order = "b",
        placeable_by = { item = "steam-lab", count = 1 },
        researching_speed = 1,
        selection_box = {
            { -1.5, -1.5 },
            { 1.5,  1.5 }
        },
        vehicle_impact_sound = {
            game_controller_vibration_data = {
                duration = 150,
                low_frequency_vibration_intensity = 0.9
            },
            switch_vibration_data = {
                filename = "__base__/sound/car-metal-impact.bnvib"
            },
            variations = {
                { filename = "__base__/sound/car-metal-impact-2.ogg", volume = 0.5 },
                { filename = "__base__/sound/car-metal-impact-3.ogg", volume = 0.5 },
                { filename = "__base__/sound/car-metal-impact-4.ogg", volume = 0.5 },
                { filename = "__base__/sound/car-metal-impact-5.ogg", volume = 0.5 },
                { filename = "__base__/sound/car-metal-impact-6.ogg", volume = 0.5 }
            }
        },
        working_sound = {
            fade_in_ticks = 10,
            fade_out_ticks = 30,
            max_sounds_per_type = 3,
            sound = {
                filename = "__IndustrialRevolution3Assets1__/sound/clock.ogg",
                volume = 0.5
            }
        }
    }
})
