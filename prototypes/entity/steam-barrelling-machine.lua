data:extend({
    {
        type = "furnace",
        name = "steam-barrelling-machine",

        allowed_effects = {},
        graphics_set = {
            status_colors = STATUS_COLORS,

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
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/steam-outlet-base.png",
                            height = 64,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.25 },
                            width = 64,
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
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/steam-outlet-base.png",
                            height = 64,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.25 },
                            width = 64,
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
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/steam-outlet-base.png",
                            height = 64,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.25 },
                            width = 64,
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
                            "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/steam-outlet-base.png",
                            height = 64,
                            priority = "high",
                            scale = 0.5,
                            shift = { 0, -0.25 },
                            width = 64,
                            x = 0,
                            y = 0
                        }
                    }
                }
            },

            working_visualisations = {
                {
                    animation = {
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/barrelling-machine-steam-cell.png",
                        height = 128,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, 0 },
                        width = 64,
                        x = 0,
                        y = 0
                    },
                    apply_recipe_tint = "tertiary",
                    fadeout = true
                },
                {
                    animation = {
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/barrelling-machine-canister-shadow.png",
                        height = 128,
                        priority = "high",
                        scale = 0.5,
                        shift = { 1, 0 },
                        width = 128,
                        x = 0,
                        y = 0
                    },
                    apply_recipe_tint = "tertiary",
                    fadeout = true
                },
            },
        },

        collision_box = {
            { -0.49, -0.49 },
            { 0.49,  0.49 }
        },
        corpse = "small-remnants",
        crafting_categories = { "steam-barrelling" },
        crafting_speed = 0.75,

        damaged_trigger_effect = {
            {
                damage_type_filters = { "fire", "impact" },
                frame_speed = 1,
                frame_speed_deviation = 0.1,
                initial_height = 0.5,
                initial_vertical_speed = 0.07,
                initial_vertical_speed_deviation = 0.1,
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                particle_name = "copper-particle",
                probability = 1,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },

        dying_explosion = "steam-barrelling-machine-explosion",

        energy_source = { type = "void" },
        energy_usage = "0.0625MW",
        fast_replaceable_group = "steam-barrelling-machine",
        flags = {
            "placeable-player",
            "placeable-neutral",
            "player-creation",
        },

        fluid_boxes = {
            {
                volume = 500,
                production_type = "input",
                pipe_covers = PIPE_COVERS_STEAM,
                pipe_connections = {
                    {
                        flow_direction = "input",
                        direction = defines.direction.north,
                        position = { 0, 0 },
                        connection_category = "steam"
                    }
                },
                secondary_draw_orders = { north = -1 }
            }
        },

        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-barrelling-machine.png",
        icon_mipmaps = 4,
        icon_size = 64,
        match_animation_speed_to_activity = false,
        max_health = 225,

        minable = {
            mining_time = 0.2,
            result = "steam-barrelling-machine"
        },

        mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" },

        placeable_by = { item = "steam-barrelling-machine", count = 1 },

        result_inventory_size = 1,
        source_inventory_size = 1,

        selection_box = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },

        show_recipe_icon = true,

        tile_height = 1,
        tile_width = 1,

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
            audible_distance_modifier = 0.5,
            max_sounds_per_type = 2,
            sound = {
                filename = "__base__/sound/pump.ogg",
                volume = 0.5
            }
        }
    }
})
