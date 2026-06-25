data:extend({
    {
        name                                             = "steam-beacon",
        type                                             = "beacon",
        fast_replaceable_group                           = "steam-beacon",
        icon                                             = "__IR3_Assets_steamworks__/graphics/icons/steam-beacon.png",
        flags                                            = { "placeable-player", "player-creation" },
        minable                                          = { mining_time = 0.2, result = "steam-beacon" },
        collision_box                                    = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box                                    = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        allowed_effects                                  = { "consumption", "speed", "pollution" },
        drawing_box_vertical_extension                   = 1,
        graphics_set                                     = {
            module_icons_suppressed = false,
            animation_list = {
                {
                    render_layer = "lower-object-above-shadow",
                    always_draw = true,
                    animation = {
                        layers = {
                            {
                                filename =
                                "__IR3_Assets_steamworks__/graphics/entity/steam-beacon/upscale-beacon-base.png",
                                width = 232,
                                height = 186,
                                shift = util.by_pixel(11, 1.5),
                                scale = 0.5,
                            },
                            {
                                filename =
                                "__IR3_Assets_steamworks__/graphics/entity/steam-beacon/upscale-beacon-base-shadow.png",
                                width = 232,
                                height = 186,
                                shift = util.by_pixel(11, 1.5),
                                draw_as_shadow = true,
                                scale = 0.5,
                            },
                        },
                    },
                },
                {
                    render_layer = "object",
                    always_draw = true,
                    animation = {
                        layers = {
                            {
                                filename =
                                "__IR3_Assets_steamworks__/graphics/entity/steam-beacon/upscale-beacon-antenna.png",
                                width = 108,
                                height = 100,
                                line_length = 8,
                                frame_count = 32,
                                animation_speed = 0.5,
                                shift = util.by_pixel(-1, -55),
                                scale = 0.5,
                            },
                            {
                                filename =
                                "__IR3_Assets_steamworks__/graphics/entity/steam-beacon/upscale-beacon-antenna-shadow.png",
                                width = 126,
                                height = 98,
                                line_length = 8,
                                frame_count = 32,
                                animation_speed = 0.5,
                                shift = util.by_pixel(100.5, 15.5),
                                draw_as_shadow = true,
                                scale = 0.5,
                            },
                        },
                    },
                },
            },
        },

        energy_usage                                     = "480kW",
        energy_source                                    = {
            type                 = "fluid",
            fluid_box            = {
                volume = 100,
                filter = "steam",
                minimum_temperature = 165,
                maximum_temperature = 165,
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
                secondary_draw_orders = {
                    north = -1
                }
            },
            corpse               = "medium-remnants",
            dying_explosion      = "steam-beacon-explosion",
            light_flicker        = {
                color = { r = 0, g = 0, b = 0, a = 0
                }
            },
            emissions_per_minute = { pollution = 10 },
            maximum_temperature  = 165,
            scale_fluid_usage    = true,
            smoke                = {
                {
                    east_position = { -0.4125, -1.55 },
                    frequency = 2,
                    name = "light-smoke",
                    north_position = { -1.2375, -1 },
                    offset = 0,
                    slow_down_factor = 1,
                    south_position = { -1.2375, -1 },
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                    west_position = { -0.4125, -1.55 }
                },
                {
                    east_position = { 0.5375, -1.55 },
                    frequency = 2,
                    name = "light-smoke",
                    north_position = { 1.3625, -1 },
                    offset = 0.125,
                    slow_down_factor = 1,
                    south_position = { 1.3625, -1 },
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                    west_position = { 0.5375, -1.55 }
                },
                {
                    east_position = { -0.4125, 0.25 },
                    frequency = 2,
                    name = "light-smoke",
                    north_position = { -1.2375, -0.3 },
                    offset = 0.25,
                    slow_down_factor = 1,
                    south_position = { -1.2375, -0.3 },
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                    west_position = { -0.4125, 0.25 }
                },
                {
                    east_position = { 0.5375, 0.25 },
                    frequency = 2,
                    name = "light-smoke",
                    north_position = { 1.3625, -0.3 },
                    offset = 0.375,
                    slow_down_factor = 1,
                    south_position = { 1.3625, -0.3 },
                    starting_frame_deviation = 60,
                    starting_frame_speed_deviation = 0.02,
                    starting_vertical_speed = 0.08,
                    starting_vertical_speed_deviation = 0.02,
                    west_position = { 0.5375, 0.25 }
                }
            }
        },

        effect_receiver                                  = {
            uses_beacon_effects = false,
            uses_module_effects = true,
            uses_surface_effects = false
        },
        radius_visualisation_picture                     = {
            filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
            priority = "extra-high-no-scale",
            width = 10,
            height = 10
        },
        supply_area_distance                             = 3,
        distribution_effectivity                         = 1.5,
        distribution_effectivity_bonus_per_quality_level = 0.2,
        module_slots                                     = 2,
        beacon_counter                                   = "same_type",
        impact_category                                  = "metal",
        open_sound                                       = {
            filename = "__base__/sound/open-close/beacon-open.ogg",
            volume = 0.25,
        },
        close_sound                                      = {
            filename = "__base__/sound/open-close/beacon-close.ogg",
            volume = 0.25,
        },
        working_sound                                    = {
            sound = {
                variations = {
                    {
                        filename = "__base__/sound/beacon-1.ogg",
                        volume = 0.3,
                    },
                    {
                        filename = "__base__/sound/beacon-2.ogg",
                        volume = 0.3,
                    },
                },
                audible_distance_modifier = 0.33,
            },
            max_sounds_per_prototype = 3,
        },

        icons_positioning                                = { { inventory_index = defines.inventory.beacon_modules, shift = { 0, 0 }, multi_row_initial_height_modifier = -0.3, max_icons_per_row = 2 } }
    }
})
