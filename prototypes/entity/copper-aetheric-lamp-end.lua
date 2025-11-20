data:extend({
    {
        type                              = "assembling-machine",
        name                              = "copper-aetheric-lamp-end",

        circuit_connector                 = circuit_connector_definitions.create_vector(
            universal_connector_template, {
                { variation = 24, main_offset = util.by_pixel(-15 / 2 - 3, -8.5 / 2),   shadow_offset = util.by_pixel(0, -0.5),   show_shadow = false },
                { variation = 26, main_offset = util.by_pixel(13.5 / 2, 4.5 / 2),       shadow_offset = util.by_pixel(-7, -12.5), show_shadow = true },
                { variation = 24, main_offset = util.by_pixel(-14.5 / 2 - 3, -8.5 / 2), shadow_offset = util.by_pixel(-12.5, 6),  show_shadow = false },
                { variation = 26, main_offset = util.by_pixel(-16 / 2, 3.5 / 2),        shadow_offset = util.by_pixel(-14, 13.5), show_shadow = true },
            }),
        circuit_wire_max_distance         = default_circuit_wire_max_distance,

        graphics_set                      = {
            animation = {
                east = {
                    layers = {
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-shadow-e.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-shadow.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 1, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-e.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-off.png",
                            height = 96,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.5 },
                            width = 96,
                            x = 0,
                            y = 0
                        }
                    }
                },
                north = {
                    layers = {
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-shadow-n.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-shadow.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 1, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-n.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-off.png",
                            height = 96,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.5 },
                            width = 96,
                            x = 0,
                            y = 0
                        }
                    }
                },
                south = {
                    layers = {
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-shadow-s.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-shadow.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 1, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-s.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-off.png",
                            height = 96,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.5 },
                            width = 96,
                            x = 0,
                            y = 0
                        }
                    }
                },
                west = {
                    layers = {
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-shadow-w.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = true,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-shadow.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 1, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-steam-w.png",
                            height = 120,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, 0 },
                            width = 180,
                            x = 0,
                            y = 0
                        },
                        {
                            draw_as_glow = false,
                            draw_as_light = false,
                            draw_as_shadow = false,
                            filename =
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-off.png",
                            height = 96,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.5 },
                            width = 96,
                            x = 0,
                            y = 0
                        }
                    }
                }
            },

            working_visualisations = {
                {
                    animation = {
                        animation_speed = 1,
                        blend_mode = "additive-soft",
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/aetheric-lamp-bulb-on.png",
                        frame_count = 30,
                        height = 96,
                        line_length = 10,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -0.5 },
                        width = 96,
                        x = 0,
                        y = 0
                    },
                    apply_recipe_tint = "primary",
                    fadeout = true
                },
                {
                    apply_recipe_tint = "secondary",
                    fadeout = true,
                    light = {
                        color = { 1, 1, 1 },
                        intensity = 0.75,
                        shift = { 0, -0.5 },
                        size = 30
                    }
                }
            }
        },

        collision_box                     = {
            { -0.49, -0.49 },
            { 0.49,  0.49 }
        },

        corpse                            = "small-remnants",
        crafting_categories               = { "glowing" },
        crafting_speed                    = 1.25,
        dying_explosion                   = "copper-aetheric-lamp-end",
        energy_source                     = {
            type                 = "fluid",

            fluid_box            = {
                volume = 200,
                filter = "steam",

                pipe_connections = {
                    {
                        direction           = defines.direction.north,
                        flow_direction      = "input",
                        position            = { 0, 0 },
                        connection_category = "steam"
                    }
                },

                pipe_covers = PIPE_COVERS_STEAM,

                production_type = "input-output",
                secondary_draw_orders = { north = -1 }
            },

            light_flicker        = {
                color = { r = 0, g = 0, b = 0, a = 0 }
            },

            maximum_temperature  = 165,
            render_no_power_icon = false,
            scale_fluid_usage    = true
        },

        energy_usage                      = "2.5kW",
        fast_replaceable_group            = "pipe",
        flags                             = {
            "placeable-player",
            "placeable-neutral",
            "player-creation",
            "not-upgradable",
            "hide-alt-info",
            "not-upgradable"
        },

        gui_title_key                     = "gui-title.glowing",
        icon                              = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-aetheric-lamp.png",
        icon_size                         = 64,
        match_animation_speed_to_activity = false,
        max_health                        = 50,
        minable                           = { mining_time = 0.2, result = "copper-aetheric-lamp-end" },
        mined_sound                       = { filename = "__core__/sound/deconstruct-medium.ogg" },
        placeable_by                      = { item = "copper-aetheric-lamp-end", count = 1 },

        result_inventory_size             = 0,
        source_inventory_size             = 0,

        selection_box                     = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },

        status_colors                     = STATUS_COLORS,

        tile_height                       = 1,
        tile_width                        = 1,

        vehicle_impact_sound              = {
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
        }
    }
})
