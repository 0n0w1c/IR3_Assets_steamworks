data:extend({
    {
        type = "optimized-particle",
        name = "scatterbot-death-particle",

        ended_in_water_trigger_effect = {
            entity_name = "water-splash",
            type = "create-entity"
        },
        ended_on_ground_trigger_effect = {
            {
                entity_name = "scatterbot-remnants",
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
                direction_count = 16,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-base.png",
                frame_count = 16,
                height = 128,
                line_length = 16,
                priority = "high",
                scale = 0.5,
                shift = { 0, 0 },
                variation_count = 1,
                width = 128,
                x = 0,
                y = 0
            }
        },
        render_layer = "air-object",
        render_layer_when_on_ground = "corpse",
        shadows = {
            sheet = {
                animation_speed = 0.5,
                direction_count = 16,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-shadow.png",
                frame_count = 16,
                height = 128,
                line_length = 16,
                priority = "high",
                scale = 0.5,
                shift = { 1, 0.6 },
                variation_count = 1,
                width = 192,
                x = 0,
                y = 0
            }
        }
    }
})

data:extend({
    {
        type = "combat-robot",
        name = "scatterbot",
        hidden_in_factoriopedia = true,
        alert_when_damaged = false,
        attack_parameters = {
            ammo_category = "shotgun-shell",

            ammo_type = {
                action = {
                    {
                        action_delivery = {
                            source_effects = {
                                entity_name = "explosion-gunshot",
                                type = "create-explosion"
                            },
                            type = "instant"
                        },
                        type = "direct"
                    },
                    {
                        action_delivery = {
                            direction_deviation = 0.35,
                            max_range = 15,
                            projectile = "bullet-66-100-6",
                            range_deviation = 0.35,
                            starting_speed = 1.25,
                            starting_speed_deviation = 0.1,
                            type = "projectile"
                        },
                        repeat_count = 12,
                        type = "direct"
                    }
                },
                category = "shotgun-shell",
                target_type = "direction"
            },
            cooldown = 120,
            projectile_center = { 0, 0 },
            projectile_creation_distance = 1,
            range = 15,
            sound = {
                variations = {
                    {
                        filename = "__IndustrialRevolution3Assets1__/sound/shotgun1.ogg",
                        volume = 0.5
                    },
                    {
                        filename = "__IndustrialRevolution3Assets1__/sound/shotgun2.ogg",
                        volume = 0.5
                    },
                    {
                        filename = "__IndustrialRevolution3Assets1__/sound/shotgun3.ogg",
                        volume = 0.5
                    }
                }
            },
            type = "projectile"
        },
        collision_box = {
            { 0, 0 },
            { 0, 0 }
        },
        destroy_action = {
            action_delivery = {
                source_effects = {
                    frame_speed = 0.5,
                    frame_speed_deviation = 0.5,
                    initial_height = 1.8,
                    initial_vertical_speed = 0,
                    offset_deviation = {
                        { -0.01, -0.01 },
                        { 0.01,  0.01 }
                    },
                    offsets = {
                        { 0, 0.5 }
                    },
                    particle_name = "scatterbot-death-particle",
                    speed_from_center = 0,
                    speed_from_center_deviation = 0.1,
                    type = "create-particle"
                },
                type = "instant"
            },
            type = "direct"
        },
        dying_trigger_effect = {
            {
                frame_speed = 1,
                frame_speed_deviation = 0.5,
                initial_height = 1.8,
                initial_vertical_speed = 0,
                offset_deviation = {
                    { -0.01, -0.01 },
                    { 0.01,  0.01 }
                },
                offsets = {
                    { 0, 0.5 }
                },
                particle_name = "scatterbot-death-particle",
                repeat_count = 1,
                speed_from_center = 0.08,
                speed_from_center_deviation = 0.2,
                type = "create-particle"
            },
            {
                sound = {
                    {
                        filename = "__base__/sound/fight/robot-die-whoosh-1.ogg",
                        volume = 0.5
                    },
                    {
                        filename = "__base__/sound/fight/robot-die-whoosh-2.ogg",
                        volume = 0.5
                    },
                    {
                        filename = "__base__/sound/fight/robot-die-whoosh-3.ogg",
                        volume = 0.5
                    }
                },
                type = "play-sound"
            }
        },
        flags = {
            "placeable-player",
            "player-creation",
            "placeable-off-grid",
            "not-on-map",
            "not-repairable"
        },
        follows_player = true,
        friction = 0.01,
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/scatterbot.png",
        icon_mipmaps = 4,
        icon_size = 64,
        idle = {
            direction_count = 16,
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = false,
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-base.png",
            frame_count = 1,
            height = 128,
            line_length = 16,
            priority = "high",
            scale = 0.5,
            shift = { 0, 0 },
            width = 128,
            x = 0,
            y = 0
        },
        in_motion = {
            direction_count = 16,
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = false,
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-base.png",
            frame_count = 1,
            height = 128,
            line_length = 16,
            priority = "high",
            scale = 0.5,
            shift = { 0, 0 },
            width = 128,
            x = 0,
            y = 128
        },
        max_health = 100,
        max_speed = 0.0025,
        order = "e-a",
        range_from_player = 6,
        resistances = {
            {
                percent = 100,
                type = "fire"
            },
            {
                percent = 50,
                type = "acid"
            },
            {
                percent = 35,
                type = "impact"
            }
        },
        selection_box = {
            { -0.5, -1.5 },
            { 0.5,  -0.5 }
        },
        shadow_idle = {
            direction_count = 16,
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = true,
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-shadow.png",
            frame_count = 1,
            height = 128,
            line_length = 16,
            priority = "high",
            scale = 0.5,
            shift = { 1, 0.6 },
            width = 192,
            x = 0,
            y = 0
        },
        shadow_in_motion = {
            direction_count = 16,
            draw_as_glow = false,
            draw_as_light = false,
            draw_as_shadow = true,
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-shadow.png",
            frame_count = 1,
            height = 128,
            line_length = 16,
            priority = "high",
            scale = 0.5,
            shift = { 1, 0.6 },
            width = 192,
            x = 0,
            y = 128
        },
        speed = 0.0025,
        time_to_live = 1800,
        working_sound = {
            fade_in_ticks = 10,
            fade_out_ticks = 30,
            max_sounds_per_prototype = 3,
            sound = {
                {
                    filename = "__IndustrialRevolution3Assets1__/sound/ticktock.ogg",
                    volume = 0.5
                }
            }
        }
    }
})
