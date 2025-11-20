local entity                         = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])

entity.name                          = "steam-pipe-to-ground-short"
entity.icon                          = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-pipe-to-ground-short.png"
entity.minable                       = { mining_time = 0.5, result = "steam-pipe-to-ground-short" }
entity.dying_explosion               = "steam-pipe-to-ground-explosion"

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
      string = "0eNqdkN0KgzAMRt8l11Vm1WH7KmMMf4ILaCptHRPpu6/qxS7GYOwyycc55FuhGWacLLEHvQK1hh3oywqOeq6Hbcf1iKDBeazHZKIJE2+S3pqZu8TdjfUQBBB3+ASdhasAZE+e8ODsw3LjeWzQxoD4gSdgMi4iDG/+iJVVWgpYQBcyLaOtI4vtcc9kEB8W+Zclz79aiu0v8jhG5LswAQ+0bg+UZ6kKpcoqy5U6FSG8APwVctY=",
      position = {0, 0}
    }
  ]]
}

entity.fluid_box.pipe_covers         = PIPE_COVERS_STEAM

entity.fast_replaceable_group        = "steam-pipe"
entity.fluid_box.filter              = "steam"
entity.fluid_box.minimum_temperature = 165
entity.fluid_box.maximum_temperature = 165
entity.fluid_box.pipe_connections    = {
    {
        direction = 0,
        position = { 0, 0 },
        connection_category = "steam",
    },
    {
        connection_type = "underground",
        direction = 8,
        position = { 0, 0 },
        connection_category = "steam",
        max_underground_distance = 5,
    },
}

entity.pictures                      = {
    north = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-uns.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-uns.png",
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
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-ues.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ues.png",
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
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-uss.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-uss.png",
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
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-steam-uws.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-uws.png",
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
