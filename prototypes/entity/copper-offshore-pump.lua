local entity                     = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])

entity.name                      = "copper-offshore-pump"
entity.icon                      = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pump.png"
entity.minable                   = { mining_time = 0.5, result = "copper-offshore-pump" }
entity.dying_explosion           = "copper-offshore-pump-explosion"
entity.fast_replaceable_group    = "copper-pipe"

entity.pumping_speed             = 8

entity.circuit_connector         = circuit_connector_definitions.create_vector(universal_connector_template,
    {
        { variation = 0, main_offset = util.by_pixel(4.75, -2.875),  shadow_offset = util.by_pixel(4.75, -2.875),  show_shadow = true },
        { variation = 6, main_offset = util.by_pixel(-4.25, -0.875), shadow_offset = util.by_pixel(-4.25, -0.875), show_shadow = true },
        { variation = 4, main_offset = util.by_pixel(-4.25, -12.75), shadow_offset = util.by_pixel(-4.25, -12.75), show_shadow = true },
        { variation = 2, main_offset = util.by_pixel(4.5, -9.25),    shadow_offset = util.by_pixel(4.5, -9.25),    show_shadow = true },
    }
)
entity.circuit_wire_max_distance = default_circuit_wire_max_distance
entity.damaged_trigger_effect    = {
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

entity.fluid_box                 = {
    volume = 100,
    pipe_covers = PIPE_COVERS_COPPER,
    production_type = "output",
    pipe_connections = {
        {
            position = { 0, 0 },
            direction = 8,
            flow_direction = "output",
            connection_category = "water",
        }
    }
}

entity.graphics_set              = {
    animation = {
        east = {
            layers = {
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-west-shadow.png",
                    frame_count = 30,
                    height = 128,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 1, 0 },
                    width = 192,
                    x = 0,
                    y = 0
                },
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-west.png",
                    frame_count = 30,
                    height = 128,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0.5, 0 },
                    width = 128,
                    x = 0,
                    y = 0
                }
            }
        },
        north = {
            layers = {
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-south-shadow.png",
                    frame_count = 30,
                    height = 160,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0.5, -0.25 },
                    width = 192,
                    x = 0,
                    y = 0
                },
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-south.png",
                    frame_count = 30,
                    height = 160,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0, -0.25 },
                    width = 128,
                    x = 0,
                    y = 0
                }
            }
        },
        south = {
            layers = {
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-north-shadow.png",
                    frame_count = 30,
                    height = 192,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0.5, 0.5 },
                    width = 192,
                    x = 0,
                    y = 0
                },
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-north.png",
                    frame_count = 30,
                    height = 192,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0, 0.5 },
                    width = 128,
                    x = 0,
                    y = 0
                }
            }
        },
        west = {
            layers = {
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = true,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-east-shadow.png",
                    frame_count = 30,
                    height = 128,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0, 0 },
                    width = 192,
                    x = 0,
                    y = 0
                },
                {
                    animation_speed = 0.5,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                    filename =
                    "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-base-east.png",
                    frame_count = 30,
                    height = 128,
                    line_length = 5,
                    priority = "high",
                    scale = 0.5,
                    shift = { -0.5, 0 },
                    width = 128,
                    x = 0,
                    y = 0
                }
            }
        }
    }
}

entity.water_reflection          = {
    orientation_to_variation = true,
    pictures = {
        {
            filename = "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-reflection.png",
            height = 128,
            priority = "extra-high",
            scale = 1,
            shift = { 0, -0.5 },
            width = 128,
            x = 0
        },
        {
            filename = "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-reflection.png",
            height = 128,
            priority = "extra-high",
            scale = 1,
            shift = { 1, 0.25 },
            width = 128,
            x = 128
        },
        {
            filename = "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-reflection.png",
            height = 128,
            priority = "extra-high",
            scale = 1,
            shift = { 0, 1 },
            width = 128,
            x = 256
        },
        {
            filename = "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/copper-pump-reflection.png",
            height = 128,
            priority = "extra-high",
            scale = 1,
            shift = { -1, 0.25 },
            width = 128,
            x = 384
        }
    },
    rotate = false
}

data:extend({ entity })
