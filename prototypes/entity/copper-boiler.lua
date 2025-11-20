data:extend({
    {
        type                      = "boiler",
        name                      = "copper-boiler",
        fast_replaceable_group    = "copper-pipe",
        burning_cooldown          = 20,
        close_sound               = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.5
        },
        collision_box             = {
            { -0.45, -1.45 },
            { 0.45,  1.45 }
        },
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
                probability = 0.4666666666666667,
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
                particle_name = "stone-particle",
                probability = 0.5333333333333333,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        dying_explosion           = "copper-boiler-explosion",
        energy_consumption        = "0.9MW",
        energy_source             = {
            type = "burner",
            effectivity = 1,
            emissions_per_minute = { pollution = 15 },

            fuel_categories = { "chemical" },
            fuel_inventory_size = 1,

            light_flicker = {
                color = { r = 0, g = 0, b = 0, a = 1 },
                maximum_intensity = 1,
                minimum_intensity = 0.6
            },

            smoke = {
                {
                    name                     = "smoke",
                    frequency                = 8,
                    north_position           = { -0.3, -0.55 },
                    south_position           = { -0.3, -0.55 },
                    east_position            = { 0.0, -0.8 },
                    west_position            = { 0.0, -0.8 },
                    starting_frame_deviation = 60,
                    starting_vertical_speed  = 0
                }
            }
        },
        pictures                  = {
            north = {
                structure = {
                    layers = {
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-base-n.png",
                            priority = "high",
                            width = 64,
                            height = 256,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 0, 0 }
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-vertical-shadow.png",
                            draw_as_shadow = true,
                            priority = "high",
                            width = 192,
                            height = 256,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 1, 0 }
                        }
                    }
                },
                fire = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-fire-vertical.png",
                    draw_as_glow = true,
                    priority = "high",
                    frame_count = 30,
                    line_length = 10,
                    animation_speed = 0.5,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    shift = { 0, 0 }
                },
                fire_glow = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-glow-vertical.png",
                    draw_as_glow = true,
                    priority = "high",
                    width = 192,
                    height = 192,
                    scale = 0.5,
                    shift = { 0, 0 },
                    blend_mode = "additive"
                },
            },

            east = {
                structure = {
                    layers = {
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-base-e.png",
                            priority = "high",
                            width = 192,
                            height = 128,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 0, 0 }
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-horizontal-shadow.png",
                            draw_as_shadow = true,
                            priority = "high",
                            width = 256,
                            height = 128,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 0.5, 0 }
                        }
                    }
                },
                fire = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-fire-horizontal.png",
                    draw_as_glow = true,
                    priority = "high",
                    frame_count = 30,
                    line_length = 10,
                    animation_speed = 0.5,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    shift = { 0, 0 }
                },
                fire_glow = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-glow-horizontal.png",
                    draw_as_glow = true,
                    priority = "high",
                    width = 192,
                    height = 128,
                    scale = 0.5,
                    shift = { 0, 0.5 },
                    blend_mode = "additive"
                },
            },

            south = {
                structure = {
                    layers = {
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-base-s.png",
                            priority = "high",
                            width = 64,
                            height = 256,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 0, 0 }
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-vertical-shadow.png",
                            draw_as_shadow = true,
                            priority = "high",
                            width = 192,
                            height = 256,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 1, 0 }
                        }
                    }
                },
                fire = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-fire-vertical.png",
                    draw_as_glow = true,
                    priority = "high",
                    frame_count = 30,
                    line_length = 10,
                    animation_speed = 0.5,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    shift = { 0, 0 }
                },
                fire_glow = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-glow-vertical.png",
                    draw_as_glow = true,
                    priority = "high",
                    width = 192,
                    height = 192,
                    scale = 0.5,
                    shift = { 0, 0 },
                    blend_mode = "additive"
                },
            },

            west = {
                structure = {
                    layers = {
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-base-w.png",
                            priority = "high",
                            width = 192,
                            height = 128,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 0, 0 }
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-horizontal-shadow.png",
                            draw_as_shadow = true,
                            priority = "high",
                            width = 256,
                            height = 128,
                            frame_count = 1,
                            line_length = 1,
                            scale = 0.5,
                            shift = { 0.5, 0 }
                        }
                    }
                },
                fire = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-fire-horizontal.png",
                    draw_as_glow = true,
                    priority = "high",
                    frame_count = 30,
                    line_length = 10,
                    animation_speed = 0.5,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    shift = { 0, 0 }
                },
                fire_glow = {
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/power/copper-boiler-glow-horizontal.png",
                    draw_as_glow = true,
                    priority = "high",
                    width = 192,
                    height = 128,
                    scale = 0.5,
                    shift = { 0, 0.5 },
                    blend_mode = "additive"
                },
            },
        },
        fire_flicker_enabled      = true,
        fire_glow                 = {},
        fire_glow_flicker_enabled = false,
        flags                     = {
            "placeable-neutral",
            "player-creation"
        },
        fluid_box                 = {
            volume = 100,
            filter = "water",
            production_type = "input",
            pipe_covers = PIPE_COVERS_COPPER,
            pipe_connections = {
                {
                    position = { 0, -1 },
                    direction = defines.direction.north,
                    flow_direction = "input",
                    connection_category = "water",
                }
            }
        },
        icon                      = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-boiler.png",
        icon_mipmaps              = 4,
        icon_size                 = 64,
        max_health                = 100,
        minable                   = {
            mining_time = 0.2,
            result = "copper-boiler"
        },
        mode                      = "output-to-separate-pipe",
        open_sound                = {
            filename = "__base__/sound/machine-open.ogg",
            volume = 0.5
        },
        output_fluid_box          = {
            volume = 100,
            filter = "steam",
            production_type = "output",
            pipe_covers = PIPE_COVERS_STEAM,
            pipe_connections = {
                {
                    position = { 0, 1 },
                    direction = defines.direction.south,
                    flow_direction = "output",
                    connection_category = "steam",
                }
            }
        },
        selection_box             = {
            { -0.5, -1.5 },
            { 0.5,  1.5 }
        },
        target_temperature        = 165,
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
            fade_in_ticks = 4,
            fade_out_ticks = 10,
            sound = {
                filename = "__base__/sound/boiler.ogg",
                volume = 0.7
            }
        }
    }
})
