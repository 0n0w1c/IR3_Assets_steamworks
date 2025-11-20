local entity                                = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])

entity.name                                 = "steam-assembling-machine"

entity.icon                                 = "__IndustrialRevolution3Assets1__/graphics/icons/64/assembler1.png"

entity.minable                              = { mining_time = 0.5, result = "steam-assembling-machine", count = 1 }

entity.module_slots                         = 2
entity.crafting_speed                       = 0.75

entity.resistances                          = {}
entity.corpse                               = "medium-remnants"
entity.damaged_trigger_effect               = {
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
        probability = 0.78531073446327682,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
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
        particle_name = "iron-particle",
        probability = 0.079096045197740121,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
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
        particle_name = "wood-particle",
        probability = 0.13559322033898304,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.dying_explosion                      = "steam-assembling-machine-explosion"

entity.energy_source                        = {
    fluid_box = {
        volume = 200,
        filter = "steam",
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
    light_flicker = {
        color = { r = 0, g = 0, b = 0, a = 0
        }
    },
    maximum_temperature = 165,
    scale_fluid_usage = true,
    smoke = {
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
    },
    type = "fluid"
}

entity.graphics_set                         = {
    status_colors = STATUS_COLORS,

    animation = {
        layers = {
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler1-base.png",
                frame_count = 60,
                height = 256,
                line_length = 10,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.5 },
                width = 192,
                x = 0,
                y = 0
            },
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/copper-shadow.png",
                height = 192,
                priority = "high",
                repeat_count = 60,
                scale = 0.5,
                shift = { 0.5, 0 },
                width = 256,
                x = 0,
                y = 0
            },
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler1-shadow.png",
                frame_count = 60,
                height = 192,
                line_length = 10,
                priority = "high",
                scale = 0.5,
                shift = { 2.5, 0 },
                width = 128,
                x = 0,
                y = 0
            }
        }
    }
}

entity.energy_usage                         = "125kW"

entity.working_sound                        = {
    fade_in_ticks = 10,
    fade_out_ticks = 30,
    sound = {
        filename = "__IndustrialRevolution3Assets1__/sound/rhythmic.ogg",
        volume = 0.5
    }
}

entity.fluid_boxes                          = {
    {
        production_type = "input",
        pipe_picture = PIPE_PICTURES_COPPER,
        pipe_covers = PIPE_COVERS_IRON,
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "input",
                direction = defines.direction.north,
                position = { 0, -1 },
            },
        },
        secondary_draw_orders = {
            north = -1,
        },
    },
    {
        production_type = "output",
        pipe_picture = PIPE_PICTURES_COPPER,
        pipe_covers = PIPE_COVERS_IRON,
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "output",
                direction = defines.direction.south,
                position = { 0, 1 },
            },
        },
        secondary_draw_orders = {
            north = -1,
        },
    },
}

entity.fluid_boxes_off_when_no_fluid_recipe = true

data:extend({ entity })
