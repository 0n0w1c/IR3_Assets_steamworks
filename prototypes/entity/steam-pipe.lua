local entity                          = table.deepcopy(data.raw["pipe"]["pipe"])

entity.name                           = "steam-pipe"
entity.icon                           = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-pipe.png"
entity.minable                        = { mining_time = 0.5, result = "steam-pipe" }

entity.dying_explosion                = "steam-pipe-explosion"

entity.damaged_trigger_effect         = {
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
}

entity.fast_replaceable_group         = "steam-pipe"
entity.fluid_box.filter               = "steam"
entity.fluid_box.minimum_temperature  = 165
entity.fluid_box.maximum_temperature  = 165
entity.fluid_box.pipe_covers          = PIPE_COVERS_STEAM
entity.fluid_box.pipe_connections     = {
    {
        direction = 0,
        position = { 0, 0 },
        connection_category = "steam",
    },
    {
        direction = 4,
        position = { 0, 0 },
        connection_category = "steam",
    },
    {
        direction = 8,
        position = { 0, 0 },
        connection_category = "steam",
    },
    {
        direction = 12,
        position = { 0, 0 },
        connection_category = "steam",
    },
}

entity.horizontal_window_bounding_box = { { -0.25, -0.3125 }, { 0.25, 0 } }
entity.vertical_window_bounding_box   = { { -0.25, -0.5 }, { 0.25, 0.25 } }

entity.pictures                       = {
    corner_down_left = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-sw.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-sw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    corner_down_right = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-se.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-se.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    corner_up_left = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-nw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-nw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    corner_up_right = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-ne.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ne.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    cross = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-x.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-x.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    ending_down = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-en.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-en.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    ending_left = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-ee.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ee.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    ending_right = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-ew.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ew.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    ending_up = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-es.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-es.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    fluid_background = {
        filename = "__base__/graphics/entity/pipe/fluid-background.png",
        height = 40,
        priority = "extra-high",
        scale = 0.5,
        width = 64
    },
    gas_flow = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/pipe/steam.png",
        frame_count = 60,
        height = 30,
        line_length = 10,
        priority = "extra-high",
        width = 48
    },
    high_temperature_flow = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
        height = 18,
        priority = "extra-high",
        width = 160
    },
    horizontal_window_background = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-hb.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            }
        }
    },
    low_temperature_flow = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        height = 18,
        priority = "extra-high",
        width = 160
    },
    middle_temperature_flow = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
        height = 18,
        priority = "extra-high",
        width = 160
    },
    straight_horizontal = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-h.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-h.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    straight_horizontal_window = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-hw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-hw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    straight_vertical = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-v.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-v.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    straight_vertical_single = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-vs.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-vs.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    straight_vertical_window = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-vw.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-vw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    t_down = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-ts.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ts.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    t_left = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-tw.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-tw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    t_right = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-te.png",
                height = 92,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -0.21875 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-te.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    t_up = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-tn.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-tn.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                width = 180
            }
        }
    },
    vertical_window_background = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-vb.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            }
        }
    },
    straight_vertical_single_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 0,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_vertical_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 320,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_vertical_window_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 320,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_horizontal_window_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 640,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_horizontal_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 640,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_up_right_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 192,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_up_left_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 576,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_down_right_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 384,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_down_left_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 768,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_up_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 704,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_down_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 896,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_right_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 448,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_left_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 832,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    cross_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 960,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_up_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 64,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_down_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 256,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_right_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 128,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_left_visualization = {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = 512,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_vertical_single_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 0,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_vertical_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 320,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_vertical_window_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 320,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_horizontal_window_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 640,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    straight_horizontal_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 640,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_up_right_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 192,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_up_left_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 576,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_down_right_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 384,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    corner_down_left_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 768,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_up_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 704,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_down_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 896,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_right_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 448,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    t_left_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 832,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    cross_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 960,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_up_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 64,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_down_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 256,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_right_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 128,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    },
    ending_left_disabled_visualization = {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = 512,
        size = 64,
        scale = 0.5,
        flags = { "icon" },
    }
}

data:extend({ entity })
