data:extend({
    {
        type = "optimized-particle",
        name = "steambot-death-particle",

        ended_in_water_trigger_effect = {
            entity_name = "water-splash",
            type = "create-entity"
        },
        ended_on_ground_trigger_effect = {
            {
                entity_name = "steambot-remnants",
                type = "create-entity"
            },
            {
                sound = {
                    {
                        filename = "__base__/sound/fight/robot-die-impact-1.ogg",
                        volume = 1
                    },
                    {
                        filename = "__base__/sound/fight/robot-die-impact-2.ogg",
                        volume = 1
                    },
                    {
                        filename = "__base__/sound/fight/robot-die-impact-3.ogg",
                        volume = 1
                    }
                },
                type = "play-sound"
            }
        },
        life_time = 900,
        movement_modifier_when_on_ground = 0,
        pictures = {
            sheet = {
                animation_speed = 0.5,
                direction_count = 64,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-idle.png",
                frame_count = 64,
                height = 96,
                line_length = 8,
                priority = "high",
                scale = 0.5,
                shift = { 0, 0 },
                variation_count = 1,
                width = 96,
                x = 0,
                y = 0
            }
        },
        render_layer = "air-object",
        render_layer_when_on_ground = "corpse",
        shadows = {
            sheet = {
                animation_speed = 0.5,
                direction_count = 64,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-idle-shadow.png",
                frame_count = 64,
                height = 64,
                line_length = 8,
                priority = "high",
                scale = 0.5,
                shift = { 1, 0.6 },
                variation_count = 1,
                width = 128,
                x = 0,
                y = 0
            }
        }
    }
})

data:extend({
    {
        type = "construction-robot",
        name = "steambot",

        collision_box = { { 0, 0 }, { 0, 0 } },
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },

        construction_vector = { 0.3, 0.22 },

        damaged_trigger_effect = {
            {
                type = "create-particle",
                particle_name = "copper-particle",
                probability = 1,
                repeat_count = 1,
                damage_type_filters = { "fire", "impact" },
                frame_speed = 1,
                frame_speed_deviation = 0.1,
                initial_height = 0.5,
                initial_vertical_speed = 0.07,
                initial_vertical_speed_deviation = 0.1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
            }
        },

        dying_explosion = "steambot-explosion",
        dying_trigger_effect = {
            {
                type = "create-particle",
                particle_name = "steambot-death-particle",
                repeat_count = 1,
                frame_speed = 1,
                frame_speed_deviation = 0.5,
                initial_height = 1.8,
                initial_vertical_speed = 0,
                speed_from_center = 0.08,
                speed_from_center_deviation = 0.15,
                offset_deviation = { { -0.01, -0.01 }, { 0.01, 0.01 } },
                offsets = { { 0, 0.5 } }
            },
            {
                type = "play-sound",
                sound = {
                    { filename = "__base__/sound/fight/robot-die-whoosh-1.ogg", volume = 0.5 },
                    { filename = "__base__/sound/fight/robot-die-whoosh-2.ogg", volume = 0.5 },
                    { filename = "__base__/sound/fight/robot-die-whoosh-3.ogg", volume = 0.5 }
                }
            }
        },

        draw_cargo = true,

        flags = {
            "placeable-player",
            "player-creation",
            "placeable-off-grid",
            "not-on-map"
        },

        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steambot.png",
        icon_size = 64,

        idle = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-idle.png",
            priority = "high",
            width = 96,
            height = 96,
            frame_count = 1,
            direction_count = 64,
            line_length = 8,
            shift = { 0, 0 },
            scale = 0.5
        },

        in_motion = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-moving.png",
            priority = "high",
            width = 96,
            height = 96,
            frame_count = 1,
            direction_count = 64,
            line_length = 8,
            shift = { 0, 0 },
            scale = 0.5
        },

        shadow_idle = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-idle-shadow.png",
            priority = "high",
            width = 128,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            line_length = 8,
            shift = { 1, 0.6 },
            scale = 0.5,
            draw_as_shadow = true
        },

        shadow_in_motion = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-moving-shadow.png",
            priority = "high",
            width = 128,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            line_length = 8,
            shift = { 1, 0.6 },
            scale = 0.5,
            draw_as_shadow = true
        },

        shadow_working = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-idle-shadow.png",
            priority = "high",
            width = 128,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            line_length = 8,
            shift = { 1, 0.6 },
            scale = 0.5,
            draw_as_shadow = true
        },

        working = {
            layers = {
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-idle.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    frame_count = 1,
                    direction_count = 64,
                    line_length = 8,
                    shift = { 0, 0 },
                    scale = 0.5
                },
                {
                    filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-glow.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    frame_count = 1,
                    direction_count = 64,
                    line_length = 8,
                    shift = { 0, 0 },
                    scale = 0.5,
                    draw_as_glow = true,
                    blend_mode = "additive"
                }
            }
        },

        sparks = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/projectiles/construction-sparks.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 32,
            line_length = 8,
            shift = { 0, 0.125 },
            scale = 0.5,
            draw_as_glow = true,
            animation_speed = 0.5,
            blend_mode = "additive"
        },

        max_health = 100,

        max_payload_size = 5,

        speed = 0.075,
        max_energy = "0.75MJ",
        energy_per_move = "2.5kJ",
        energy_per_tick = "0.025kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        speed_multiplier_when_out_of_energy = 0.25,

        transfer_distance = 0.5,

        minable = {
            mining_time = 0.2,
            result = "steambot"
        },

        mined_sound = {
            filename = "__core__/sound/deconstruct-robot.ogg"
        },

        repairing_sound = {
            { filename = "__base__/sound/robot-repair-1.ogg", volume = 0.6 },
            { filename = "__base__/sound/robot-repair-2.ogg", volume = 0.6 },
            { filename = "__base__/sound/robot-repair-3.ogg", volume = 0.6 },
            { filename = "__base__/sound/robot-repair-4.ogg", volume = 0.6 },
            { filename = "__base__/sound/robot-repair-5.ogg", volume = 0.6 },
            { filename = "__base__/sound/robot-repair-6.ogg", volume = 0.6 }
        },

        working_sound = {
            sound = {
                { filename = "__IndustrialRevolution3Assets1__/sound/ticktock.ogg", volume = 0.333 }
            },
            max_sounds_per_type = 3,
            fade_in_ticks = 10,
            fade_out_ticks = 30
        }
    }
})
