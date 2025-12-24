local movement_triggers = require("__base__/prototypes/entity/movement-triggers")

data:extend({
    {
        type = "custom-input",
        name = "rotate-vehicle",
        key_sequence = "R",
        consuming = "none"
    }
})

data:extend({
    {
        type = "custom-input",
        name = "teleport-vehicle",
        key_sequence = "SHIFT + R",
        consuming = "game-only"
    }
})

data:extend({
    {
        type = "equipment-category",
        name = "monowheel"
    }
})

data:extend({
    {
        type = "equipment-grid",
        name = "monowheel-equipment-grid",
        width = 6,
        height = 6,
        equipment_categories = { "monowheel" }
    }
})

data:extend({
    {
        type = "car",
        name = "monowheel",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/monowheel.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable" },
        minable = { mining_time = 0.3, result = "monowheel" },
        mined_sound = { filename = "__core__/sound/deconstruct-large.ogg", volume = 0.7 },
        corpse = "medium-small-remnants",
        dying_explosion = "monowheel-explosion",
        render_layer = "object",
        impact_category = "metal",
        impact_speed_to_volume_ratio = 4,
        equipment_grid = "monowheel-equipment-grid",
        resistances =
        {
            { type = "impact", decrease = 100, percent = 100 },
        },
        collision_mask = { layers = { is_object = true, player = true, car = true, train = true }, consider_tile_transitions = true },
        collision_box = { { -0.49, -0.99 }, { 0.49, 0.99 } },
        selection_box = { { -0.75, -1.25 }, { 0.75, 1.25 } },
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
                probability = 0.65591397849462361,
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
                probability = 0.34408602150537639,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        track_particle_triggers = movement_triggers.car,
        energy_per_hit_point = 1.0,
        effectivity = 1.0,
        deliver_category = "vehicle",
        consumption = "400kW",
        braking_power = "300kW",
        rotation_speed = 0.007,
        tank_driving = true,
        max_health = 500,
        weight = 1000,
        inventory_size = 100,
        trash_inventory_size = 40,
        is_military_target = true,
        has_belt_immunity = true,
        immune_to_tree_impacts = true,
        immune_to_rock_impacts = true,
        immune_to_cliff_impacts = true,
        allow_remote_driving = true,
        friction = 0.015,
        energy_source =
        {
            type = "burner",
            effectivity = 1.0,
            fuel_categories = { "steam-cell" },
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
            smoke = {
                {
                    deviation = { 0.125, 0.125 },
                    frequency = 30,
                    height = 1.1,
                    name = "car-smoke",
                    offset = 0,
                    position = { -0.25, 1.5 },
                    starting_frame = 0,
                    starting_frame_deviation = 60
                },
                {
                    deviation = { 0.125, 0.125 },
                    frequency = 30,
                    height = 1.1,
                    name = "car-smoke",
                    offset = 0.083333333333333321,
                    position = { 0.25, 1.5 },
                    starting_frame = 0,
                    starting_frame_deviation = 60
                },
                {
                    deviation = { 0.125, 0.125 },
                    frequency = 30,
                    height = 0.9,
                    name = "car-smoke",
                    offset = 0.16666666666666665,
                    position = { -0.25, 1.375 },
                    starting_frame = 0,
                    starting_frame_deviation = 60
                },
                {
                    deviation = { 0.125, 0.125 },
                    frequency = 30,
                    height = 0.9,
                    name = "car-smoke",
                    offset = 0.25,
                    position = { 0.25, 1.375 },
                    starting_frame = 0,
                    starting_frame_deviation = 60
                },
                {
                    deviation = { 0.125, 0.125 },
                    frequency = 30,
                    height = 0.7,
                    name = "car-smoke",
                    offset = 0.3333333333333333,
                    position = { -0.25, 1.25 },
                    starting_frame = 0,
                    starting_frame_deviation = 60
                },
                {
                    deviation = { 0.125, 0.125 },
                    frequency = 30,
                    height = 0.7,
                    name = "car-smoke",
                    offset = 0.41666666666666661,
                    position = { 0.25, 1.25 },
                    starting_frame = 0,
                    starting_frame_deviation = 60
                }
            }
        },
        light = {
            {
                color = { r = 1, g = 1, b = 0.8 },
                intensity = 0.8,
                minimum_darkness = 0.3,
                picture = {
                    filename = "__core__/graphics/light-cone.png",
                    flags = { "light" },
                    height = 200,
                    priority = "extra-high",
                    scale = 2,
                    width = 200
                },
                shift = { 0.5, -13 },
                size = 2,
                type = "oriented"
            },
            {
                color = { r = 1, g = 1, b = 0.8 },
                intensity = 0.8,
                minimum_darkness = 0.3,
                picture = {
                    filename = "__core__/graphics/light-cone.png",
                    flags = { "light" },
                    height = 200,
                    priority = "extra-high",
                    scale = 2,
                    width = 200
                },
                shift = { -0.5, -13 },
                size = 2,
                type = "oriented"
            }
        },
        light_animation = {
            animation_speed = 8,
            apply_runtime_tint = false,
            blend_mode = "additive",
            direction_count = 64,
            draw_as_glow = true,
            draw_as_light = false,
            draw_as_shadow = false,
            frame_count = 1,
            height = 192,
            line_length = 1,
            max_advance = 1,
            priority = "high",
            repeat_count = 3,
            scale = 0.5,
            shift = { 0, 0 },
            stripes = {
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-1.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-2.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-3.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-4.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-5.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-6.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-7.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-glow-8.png",
                    height_in_frames = 8,
                    width_in_frames = 1
                }
            },
            width = 192,
            x = 0,
            y = 0
        },
        animation = {
            layers = {
                {
                    animation_speed = 8,
                    apply_runtime_tint = false,
                    direction_count = 64,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = true,
                    frame_count = 1,
                    height = 160,
                    line_length = 1,
                    max_advance = 1,
                    priority = "high",
                    repeat_count = 3,
                    scale = 0.5,
                    shift = { 1.5, 0.75 },
                    stripes = {
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-1.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-2.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-3.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-4.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-5.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-6.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-7.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-shadow-8.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        }
                    },
                    width = 256,
                    x = 0,
                    y = 0
                },
                {
                    animation_speed = 8,
                    apply_runtime_tint = false,
                    direction_count = 64,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                    flags = {
                        "trilinear-filtering"
                    },
                    frame_count = 1,
                    height = 192,
                    line_length = 1,
                    max_advance = 1,
                    priority = "high",
                    repeat_count = 3,
                    scale = 0.5,
                    shift = { 0, 0 },
                    stripes = {
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-1.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-2.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-3.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-4.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-5.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-6.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-7.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        },
                        {
                            filename = "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-base-8.png",
                            height_in_frames = 8,
                            width_in_frames = 1
                        }
                    },
                    width = 192,
                    x = 0,
                    y = 0
                },
                {
                    animation_speed = 8,
                    apply_runtime_tint = false,
                    direction_count = 64,
                    draw_as_glow = false,
                    draw_as_light = false,
                    draw_as_shadow = false,
                    frame_count = 3,
                    height = 192,
                    line_length = 3,
                    max_advance = 1,
                    priority = "high",
                    scale = 0.5,
                    shift = { 0, 0 },
                    stripes = {
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-1.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-2.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-3.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-4.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-5.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-6.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-7.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        },
                        {
                            filename =
                            "__IndustrialRevolution3Assets2__/graphics/entities/vehicles/monowheel-tracks-8.png",
                            height_in_frames = 8,
                            width_in_frames = 3
                        }
                    },
                    width = 192,
                    x = 0,
                    y = 0
                }
            }
        },
        sound_no_fuel =
        {
            {
                filename = "__base__/sound/fight/car-no-fuel-1.ogg",
                volume = 0.4
            }
        },
        sound_minimum_speed = 0.2,
        sound_scaling_ratio = 0.8,
        working_sound =
        {
            sound = { filename = "__base__/sound/car-engine.ogg", volume = 0.7 },
            activate_sound = { filename = "__base__/sound/car-engine-start.ogg", volume = 0.7 },
            deactivate_sound = { filename = "__base__/sound/car-engine-stop.ogg", volume = 0.7 },
            match_speed_to_activity = true,
        },
        crash_trigger =
        {
            type = "play-sound",
            sound = {
                filename = "__base__/sound/car-crash.ogg",
                volume = 0
            }
        },
        stop_trigger_speed = 0.1,
        stop_trigger =
        {
            {
                type = "play-sound",
                sound = {
                    {
                        filename = "__base__/sound/car-breaks.ogg",
                        volume = 0.3
                    }
                }
            }
        },
        open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.5 },
        close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.5 },
    }
})
