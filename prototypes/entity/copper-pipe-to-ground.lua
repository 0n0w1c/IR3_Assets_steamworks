local entity                         = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])

entity.name                          = "copper-pipe-to-ground"
entity.icon                          = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pipe-to-ground.png"
entity.minable                       = { mining_time = 0.5, result = "copper-pipe-to-ground" }
entity.dying_explosion               = "copper-pipe-to-ground-explosion"

entity.damaged_trigger_effect        = {
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

entity.factoriopedia_simulation      = {
    init = [[
    game.simulation.camera_position = {0.5, 0.5}

    game.surfaces[1].create_entities_from_blueprint_string{
      string = "0eNqVkN0KgzAMRt8l11WmtsP2VcYY/gQJzLTUOibSd1/Vi12MDXaZ5Ms5JCu09xmdJw5gVqDO8gTmssJEAzf3rcfNiGCgs86hzxw5zILNBm9n7iEKIO7xCaaIVwHIgQLhgdiL5cbz2KJPAfEbJcDZKW1b3qyJWNa5ErCAkSpXSdSTx+6YF2UUH4LyX0H1XSC3ayjgmGjvDwl4oJ/2gDqXWmqt6qLS+iRjfAGx0G0X",
      position = {0, 0}
    }
  ]]
}

entity.fast_replaceable_group        = "copper-pipe"
entity.fluid_box.filter              = "water"
entity.fluid_box.minimum_temperature = 15
entity.fluid_box.maximum_temperature = 100
entity.fluid_box.pipe_covers         = PIPE_COVERS_COPPER
entity.fluid_box.pipe_connections    = {
    {
        direction = 0,
        position = { 0, 0 },
        connection_category = "water",
    },
    {
        connection_type = "underground",
        direction = 8,
        position = { 0, 0 },
        connection_category = "water",
        max_underground_distance = 10,
    },
}

entity.pictures                      = {
    north = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-copper-un.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-un.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                draw_as_shadow = true
            }
        }
    },
    east = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-copper-ue.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ue.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                draw_as_shadow = true
            }
        }
    },
    south = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-copper-us.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-us.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                draw_as_shadow = true
            }
        }
    },
    west = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-copper-uw.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-uw.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                draw_as_shadow = true
            }
        }
    }
}

entity.visualization                 = {
    north = {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 64,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    },
    east = {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 128,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    },
    south = {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 192,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    },
    west = {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 256,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    }
}

entity.disabled_visualization        = {
    north = {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 64,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    },
    east = {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 128,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    },
    south = {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 192,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    },
    west = {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 256,
        size = 64,
        scale = 0.5,
        flags = { "icon" }
    }
}

data:extend({ entity })
