data:extend({
    {
        type                         = "mining-drill",
        name                         = "steam-mining-drill",

        base_render_layer            = "object",

        circuit_connector            = circuit_connector_definitions.create_vector(universal_connector_template,
            {
                { variation = 4, main_offset = util.by_pixel(-4.25, -80.625), shadow_offset = util.by_pixel(-4.25, -80.625), show_shadow = true },
                { variation = 2, main_offset = util.by_pixel(65.75, -7.75),   shadow_offset = util.by_pixel(65.75, -7.75),   show_shadow = true },
                { variation = 0, main_offset = util.by_pixel(4.75, 59.25),    shadow_offset = util.by_pixel(4.75, 59.25),    show_shadow = true },
                { variation = 6, main_offset = util.by_pixel(-66.25, -0.75),  shadow_offset = util.by_pixel(-66.25, -0.75),  show_shadow = true },
            }
        ),
        circuit_wire_max_distance    = default_circuit_wire_max_distance,

        collision_box                = {
            { -2.49, -2.49 },
            { 2.49,  2.49 }
        },
        corpse                       = "medium-remnants",

        damaged_trigger_effect       = {
            {
                damage_type_filters = { "fire", "impact" },
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
                probability = 0.71026555687673412,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            },
            {
                damage_type_filters = { "fire", "impact" },
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
                probability = 0.18038490333377371,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            },
            {
                damage_type_filters = { "fire", "impact" },
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
                probability = 0.090192451666886857,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },

        dying_explosion              = "steam-mining-drill-explosion",

        energy_source                = {
            type                 = "fluid",
            emissions_per_minute = { pollution = 1 },
            maximum_temperature  = 165,
            scale_fluid_usage    = true,
            fluid_box            = {
                volume               = 200,
                filter               = "steam",
                maximum_temperature  = 165,
                pipe_connections     = {
                    {
                        flow_direction = "input-output",
                        direction = defines.direction.east,
                        position = { 2, 0 },
                        connection_category = "steam"
                    },
                    {
                        flow_direction = "input-output",
                        direction = defines.direction.west,
                        position = { -2, 0 },
                        connection_category = "steam"
                    }
                },

                pipe_covers          = PIPE_COVERS_STEAM,
                pipe_picture         = PIPE_PICTURES_STEAM_DRILL,
                production_type      = "input-output",
                secondary_draw_order = -1,
            },
            smoke                = {
                {
                    name = "steam",
                    north_position = { 0, -2 },
                    east_position = { 0, -2 },
                    south_position = { 0, -2 },
                    west_position = { 0, -2 },
                    frequency = 1,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                }
            },
            light_flicker        = { color = { r = 0, g = 0, b = 0, a = 0 } },
        },

        energy_usage                 = "250kW",
        fast_replaceable_group       = "mining-drill",
        flags                        = {
            "placeable-player",
            "placeable-neutral",
            "player-creation"
        },

        graphics_set                 = {
            working_visualisations = {
                {
                    always_draw = true,
                    render_layer = "lower-object-above-shadow",
                    animation = {
                        filename =
                        "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-underlay-rail.png",
                        priority = "high",
                        width = 384,
                        height = 384,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 120,
                        animation_speed = 0.5,
                        scale = 0.5,
                        shift = { 0, 0 }
                    }
                },
                {
                    always_draw = true,
                    render_layer = "object",
                    north_animation = {
                        layers = {
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/iron-drill-underlay-north-shadow.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-underlay-north.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 }
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-shadow.png",
                                priority = "high",
                                width = 320,
                                height = 192,
                                frame_count = 60,
                                line_length = 6,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 1, 0.25 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-base.png",
                                priority = "high",
                                width = 192,
                                height = 256,
                                frame_count = 60,
                                line_length = 10,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, -0.25 }
                            }
                        }
                    },

                    east_animation = {
                        layers = {
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/iron-drill-underlay-east-shadow.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-underlay-east.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 }
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-shadow.png",
                                priority = "high",
                                width = 320,
                                height = 192,
                                frame_count = 60,
                                line_length = 6,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 1, 0.25 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-base.png",
                                priority = "high",
                                width = 192,
                                height = 256,
                                frame_count = 60,
                                line_length = 10,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, -0.25 }
                            }
                        }
                    },

                    south_animation = {
                        layers = {
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/iron-drill-underlay-south-shadow.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-underlay-south.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 }
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-shadow.png",
                                priority = "high",
                                width = 320,
                                height = 192,
                                frame_count = 60,
                                line_length = 6,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 1, 0.25 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-base.png",
                                priority = "high",
                                width = 192,
                                height = 256,
                                frame_count = 60,
                                line_length = 10,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, -0.25 }
                            }
                        }
                    },

                    west_animation = {
                        layers = {
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/iron-drill-underlay-west-shadow.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-underlay-west.png",
                                priority = "high",
                                width = 384,
                                height = 384,
                                frame_count = 1,
                                line_length = 1,
                                repeat_count = 118,
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, 0 }
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-shadow.png",
                                priority = "high",
                                width = 320,
                                height = 192,
                                frame_count = 60,
                                line_length = 6,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 1, 0.25 },
                                draw_as_shadow = true
                            },
                            {
                                filename =
                                "__IndustrialRevolution3Assets4__/graphics/entities/machines/drills/copper-drill-base.png",
                                priority = "high",
                                width = 192,
                                height = 256,
                                frame_count = 60,
                                line_length = 10,
                                run_mode = "forward-then-backward",
                                animation_speed = 0.5,
                                scale = 0.5,
                                shift = { 0, -0.25 }
                            }
                        }
                    }
                }
            }
        },

        icons                        = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/burner-mining-drill.png",
                icon_mipmaps = 4,
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { -8.5, 8.5 }
            }
        },

        max_health                   = 1250,
        minable                      = {
            mining_time = 0.2,
            result = "steam-mining-drill"
        },
        mining_speed                 = 1.25,

        monitor_visualization_tint   = { r = 78, g = 173, b = 255, a = 255 },

        allowed_effects              = { "speed", "productivity", "consumption", "pollution", "quality" },
        module_slots                 = 2,

        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            height = 10,
            width = 10
        },

        resource_categories          = { "basic-solid" },
        resource_searching_radius    = 2.49,

        selection_box                = {
            { -2.5, -2.5 },
            { 2.5,  2.5 }
        },

        vector_to_place_result       = { 0, -2.85 },

        vehicle_impact_sound         = {
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

        working_sound                = {
            sound = {
                {
                    filename = "__base__/sound/burner-mining-drill-1.ogg",
                    volume = 0.6,
                    modifiers = {
                        type = "tips-and-tricks",
                        volume_multiplier = 0.8,
                    },
                },
                {
                    filename = "__base__/sound/burner-mining-drill-2.ogg",
                    volume = 0.6,
                    modifiers = {
                        type = "tips-and-tricks",
                        volume_multiplier = 0.8,
                    },
                },
            },
            fade_in_ticks = 10,
            fade_out_ticks = 30,
        }
    }
})
