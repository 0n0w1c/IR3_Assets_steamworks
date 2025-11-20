require("inserter-util")

data:extend({
    {
        type = "inserter",
        name = "steam-inserter",

        pickup_position = { 0, -1 },
        extension_speed = 0.1,
        rotation_speed = 0.04,
        filter_count = 5,

        circuit_connector = circuit_connector_definitions["steam-inserter"],
        circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        default_stack_control_input_signal = inserter_default_stack_control_input_signal,

        close_sound = {
            {
                filename = "__base__/sound/machine-close.ogg",
                preload = true,
                volume = 0.5
            }
        },
        collision_box = {
            { -0.49, -0.49 },
            { 0.49,  0.49 }
        },
        corpse = "burner-inserter-remnants",
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
                probability = 0.57446808510638299,
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
                particle_name = "iron-particle",
                probability = 0.42553191489361701,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        --[[
        default_stack_control_input_signal = {
            name = "signal-S",
            type = "virtual"
        },
        ]]
        dying_explosion = "steam-inserter-explosion",
        energy_per_movement = "10kJ",
        energy_per_rotation = "10kJ",
        energy_source = {
            fluid_box = {
                volume = 200,
                filter = "steam",
                height = 2,
                pipe_connections = {
                    {
                        direction = defines.direction.east,
                        flow_direction = "input-output",
                        position = { 0, 0 },
                        connection_category = "steam"
                    },
                    {
                        direction = defines.direction.west,
                        flow_direction = "input-output",
                        position = { 0, 0 },
                        connection_category = "steam"
                    }
                },
                pipe_covers = PIPE_COVERS_STEAM,
                production_type = "input-output"
            },
            fluid_usage_per_tick = 0.018666666666666698,
            light_flicker = {
                color = { r = 0, g = 0, b = 0, a = 0 }
            },
            maximum_temperature = 165,
            type = "fluid"
        },
        --extension_speed = 0.041666666666666661,
        fast_replaceable_group = "pipe",
        flags = {
            "placeable-neutral",
            "placeable-player",
            "player-creation",
            "hide-alt-info",
            "not-upgradable"
        },
        hand_base_picture = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png",
            height = 136,
            priority = "extra-high",
            scale = 0.25,
            width = 32
        },
        hand_base_shadow = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
            height = 132,
            priority = "extra-high",
            scale = 0.25,
            width = 32
        },
        hand_closed_picture = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png",
            height = 164,
            priority = "extra-high",
            scale = 0.25,
            width = 72
        },
        hand_closed_shadow = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
            height = 164,
            priority = "extra-high",
            scale = 0.25,
            width = 72
        },
        hand_open_picture = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png",
            height = 164,
            priority = "extra-high",
            scale = 0.25,
            width = 72
        },
        hand_open_shadow = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
            height = 164,
            priority = "extra-high",
            scale = 0.25,
            width = 72
        },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-inserter.png",
        icon_mipmaps = 4,
        icon_size = 64,
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-inserter.png",
                icon_mipmaps = 4,
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { -8, 8 }
            }
        },
        insert_position = { 0, 1.2 },
        integration_patch = {
            east = {
                layers = {
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-platform.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 540
                    },
                    {
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-shadow.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 540
                    }
                }
            },
            north = {
                layers = {
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-platform.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 360
                    },
                    {
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-shadow.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 360
                    }
                }
            },
            south = {
                layers = {
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-platform.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 0
                    },
                    {
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-shadow.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 0
                    }
                }
            },
            west = {
                layers = {
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-platform.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 180
                    },
                    {
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/inserters/steam-inserter-shadow.png",
                        height = 120,
                        priority = "extra-high",
                        scale = 0.5,
                        width = 180,
                        x = 180
                    }
                }
            }
        },
        integration_patch_render_layer = "object",
        max_health = 100,
        minable = { mining_time = 0.1, result = "steam-inserter" },
        open_sound = {
            {
                filename = "__base__/sound/machine-open.ogg",
                preload = true,
                volume = 0.5
            }
        },
        --pickup_position = { 0, -1 },
        platform_picture = {
            direction_count = 1,
            filename = "__IndustrialRevolution3Assets3__/graphics/entities/machines/misc/blank.png",
            height = 1,
            priority = "high",
            repeat_count = 1,
            scale = 0.5,
            shift = { 0, 0 },
            width = 1,
            x = 0,
            y = 0
        },
        --rotation_speed = 0.016666666666666665,
        selection_box = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
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
        working_sound = {
            audible_distance_modifier = 0.3,
            match_progress_to_activity = true,
            sound = {
                {
                    filename = "__base__/sound/inserter-basic-1.ogg",
                    preload = true,
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/inserter-basic-2.ogg",
                    preload = true,
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/inserter-basic-3.ogg",
                    preload = true,
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/inserter-basic-4.ogg",
                    preload = true,
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/inserter-basic-5.ogg",
                    preload = true,
                    volume = 0.5
                }
            }
        }
    }
})
