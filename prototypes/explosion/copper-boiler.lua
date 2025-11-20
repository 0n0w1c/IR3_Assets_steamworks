data:extend({
    {
        type = "explosion",
        name = "copper-boiler-explosion",
        hidden_in_factoriopedia = true,
        animations = {
            {
                animation_speed = 0.5,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/medium-explosion/medium-explosion-1.png",
                frame_count = 30,
                height = 224,
                line_length = 6,
                priority = "high",
                scale = 0.5,
                shift = { -0.03125, -1.125 },
                width = 124
            },
            {
                animation_speed = 0.5,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/medium-explosion/medium-explosion-2.png",
                frame_count = 41,
                height = 212,
                line_length = 6,
                priority = "high",
                scale = 0.5,
                shift = { -0.40625, -1.0625 },
                width = 154
            },
            {
                animation_speed = 0.5,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/medium-explosion/medium-explosion-3.png",
                frame_count = 39,
                height = 236,
                line_length = 6,
                priority = "high",
                scale = 0.5,
                shift = { 0.015625, -1.15625 },
                width = 126
            }
        },
        created_effect = {
            action_delivery = {
                target_effects = {
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
                            { -0.28, -0.28 },
                            { 0.28,  0.28 }
                        },
                        particle_name = "trailing-copper-particle",
                        probability = 1,
                        repeat_count = 18,
                        speed_from_center = 0.034641016151377544,
                        speed_from_center_deviation = 0.017320508075688772,
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
                            { -0.28, -0.28 },
                            { 0.28,  0.28 }
                        },
                        particle_name = "trailing-stone-particle",
                        probability = 1,
                        repeat_count = 20,
                        speed_from_center = 0.034641016151377544,
                        speed_from_center_deviation = 0.017320508075688772,
                        type = "create-particle"
                    }
                },
                type = "instant"
            },
            type = "direct"
        },
        flags = { "not-on-map" },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-boiler.png",
        icon_size = 64,
        sound = {
            aggregation = {
                max_count = 1,
                remove = true
            },
            audible_distance_modifier = 0.7,
            game_controller_vibration_data = {
                duration = 120,
                low_frequency_vibration_intensity = 0.8
            },
            switch_vibration_data = {
                filename = "__base__/sound/fight/medium-explosion.bnvib",
                gain = 0.4
            },
            variations = {
                {
                    filename = "__base__/sound/fight/medium-explosion-1.ogg",
                    volume = 0.4
                },
                {
                    filename = "__base__/sound/fight/medium-explosion-2.ogg",
                    volume = 0.4
                },
                {
                    filename = "__base__/sound/fight/medium-explosion-3.ogg",
                    volume = 0.4
                },
                {
                    filename = "__base__/sound/fight/medium-explosion-4.ogg",
                    volume = 0.4
                },
                {
                    filename = "__base__/sound/fight/medium-explosion-5.ogg",
                    volume = 0.4
                }
            }
        }
    }
})
