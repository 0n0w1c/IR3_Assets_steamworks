data:extend({
    {
        type = "assembling-machine",
        name = "small-steam-assembling-machine",

        alert_icon_shift = { 0, 0 },
        graphics_set = {
            animation = {
                layers = {
                    {
                        animation_speed = 0.75,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/small-assembler-1-base.png",
                        frame_count = 64,
                        height = 128,
                        width = 128,
                        line_length = 8,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, 0 },
                    },
                    {
                        animation_speed = 0.75,
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/small-assembler-shadow.png",
                        frame_count = 64,
                        height = 128,
                        width = 192,
                        line_length = 8,
                        priority = "high",
                        -- fix shadows leaving gaps
                        scale = 0.6,
                        shift = { 0.7, -0.05 },
                    }
                }
            }
        },
        close_sound = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.5
        },
        collision_box = {
            { -0.49, -0.49 },
            { 0.49,  0.49 }
        },
        corpse = "small-remnants",
        crafting_categories = { "crafting" },
        crafting_speed = 0.75,
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
                probability = 1,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        dying_explosion = "small-steam-assembling-machine-explosion",
        energy_source = {
            fluid_box = {
                volume = 200,
                filter = "steam",
                pipe_connections = {
                    {
                        position = { 0, 0 },
                        direction = defines.direction.east,
                        flow_direction = "input-output",
                        connection_category = "steam"
                    },
                    {
                        position = { 0, 0 },
                        direction = defines.direction.west,
                        flow_direction = "input-output",
                        connection_category = "steam"
                    }
                },
                pipe_covers = PIPE_COVERS_STEAM,
                pipe_picture = PIPE_PICTURES_STEAM_SMALL,
                production_type = "input-output",
                secondary_draw_orders = {
                    north = -1
                }
            },
            light_flicker = {
                color = { r = 0, g = 0, b = 0, a = 0 }
            },
            maximum_temperature = 165,
            scale_fluid_usage = true,
            smoke = {
                {
                    name = "steam",
                    north_position = { 0, -0.375 },
                    east_position = { 0, -0.375 },
                    south_position = { 0, -0.375 },
                    west_position = { 0, -0.375 },
                    frequency = 2,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                }
            },
            type = "fluid"
        },
        energy_usage = "62.5kW",
        entity_info_icon_shift = { 0, -0.425 },
        fast_replaceable_group = nil,
        flags = {
            "placeable-player",
            "placeable-neutral",
            "player-creation"
        },
        gui_title_key = "gui-title.crafting",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/small-assembler-1.png",
        icon_mipmaps = 4,
        icon_size = 64,
        ingredient_count = 1,
        match_animation_speed_to_activity = false,
        max_health = 50,
        minable = { mining_time = 0.2, result = "small-steam-assembling-machine" },
        mined_sound = { filename = "__core__/sound/deconstruct-large.ogg" },
        allowed_effects = { "speed", "productivity", "consumption", "pollution", "quality" },
        module_slots = 1,
        next_upgrade = nil,
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.5 },
        placeable_by = { count = 1, item = "small-steam-assembling-machine" },
        selection_box = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        status_colors = STATUS_COLORS,
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
            fade_in_ticks = 10,
            fade_out_ticks = 30,
            sound = {
                filename = "__IndustrialRevolution3Assets1__/sound/small-machine-1.ogg",
                volume = 0.4
            }
        }
    }
})
