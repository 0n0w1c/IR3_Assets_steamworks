local entity                                     = table.deepcopy(data.raw["pump"]["pump"])

entity.name                                      = "copper-pump"
entity.minable                                   = { mining_time = 0.5, result = "copper-pump" }
entity.placeable_by                              = { item = "copper-pump", count = 1 }
entity.dying_explosion                           = "copper-pump-explosion"

entity.fast_replaceable_group                    = "copper-pipe"

entity.circuit_connector                         = circuit_connector_definitions.create_vector(
    universal_connector_template, {
        { variation = 24, main_offset = util.by_pixel(-15 / 2 - 3, -8.5 / 2),   shadow_offset = util.by_pixel(0, -0.5),   show_shadow = false },
        { variation = 26, main_offset = util.by_pixel(13.5 / 2, 4.5 / 2),       shadow_offset = util.by_pixel(-7, -12.5), show_shadow = true },
        { variation = 24, main_offset = util.by_pixel(-14.5 / 2 - 3, -8.5 / 2), shadow_offset = util.by_pixel(-12.5, 6),  show_shadow = false },
        { variation = 26, main_offset = util.by_pixel(-16 / 2, 3.5 / 2),        shadow_offset = util.by_pixel(-14, 13.5), show_shadow = true },
    })
entity.circuit_wire_max_distance                 = default_circuit_wire_max_distance

entity.collision_box                             = {
    { -0.5, -0.5 },
    { 0.5,  0.5 },
}

entity.selection_box                             = {
    { -0.5, -0.5 },
    { 0.5,  0.5 },
}

entity.icons                                     = {
    {
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-valve.png",
        icon_mipmaps = 4,
        icon_size = 64
    }
}

entity.damaged_trigger_effect                    = {
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

entity.fluid_box                                 = {
    volume               = 400,
    pipe_covers          = PIPE_COVERS_COPPER,
    hide_connection_info = true,
    pipe_connections     = {
        { direction = 0, position = { 0, 0 }, flow_direction = "output", connection_category = "water" },
        { direction = 8, position = { 0, 0 }, flow_direction = "input",  connection_category = "water" },
    },
    filter               = "water"
}

entity.fluid_wagon_connector_frame_count         = nil
entity.fluid_wagon_connector_alignment_tolerance = nil
entity.fluid_wagon_connector_graphics            = nil
entity.glass_pictures                            = nil
entity.fluid_animation                           = nil

entity.energy_source                             = { type = "void" }
entity.energy_usage                              = "29kW"
entity.pumping_speed                             = 20

entity.animations                                = {
    north = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-copper-n.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-shadow-n.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 },
                draw_as_shadow = true
            }
        }
    },
    east = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-copper-e.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-shadow-e.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 },
                draw_as_shadow = true
            }
        }
    },
    south = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-copper-s.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-shadow-s.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 },
                draw_as_shadow = true
            }
        }
    },
    west = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-copper-w.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/valve-shadow-w.png",
                priority = "extra-high",
                width = 180,
                height = 120,
                frame_count = 1,
                line_length = 1,
                scale = 0.5,
                shift = { 0, 0 },
                draw_as_shadow = true
            }
        }
    }
}

data:extend({ entity })
