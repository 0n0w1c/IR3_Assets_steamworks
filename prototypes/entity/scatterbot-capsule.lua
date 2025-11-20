data:extend({
    {
        type = "projectile",
        name = "scatterbot-capsule",

        hidden_in_factoriopedia = true,
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/scatterbot.png",
        icon_size = 64,

        acceleration = 0.005,
        action = {
            action_delivery = {
                target_effects = {
                    {
                        entity_name = "scatterbot",
                        offsets = {
                            { 0,    0 },
                            { 0.7,  0.7 },
                            { -0.7, 0.7 },
                            { 0.7,  -0.7 },
                            { -0.7, -0.7 }
                        },
                        show_in_tooltip = true,
                        type = "create-entity"
                    }
                },
                type = "instant"
            },
            type = "direct"
        },
        animation = {
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-base.png",
            frame_count = 1,
            height = 128,
            line_length = 16,
            priority = "high",
            scale = 0.5,
            width = 128,
            y = 128
        },
        enable_drawing_with_mask = false,
        flags = { "not-on-map" },
        shadow = {
            draw_as_shadow = true,
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/scatterbot-shadow.png",
            frame_count = 1,
            height = 128,
            line_length = 16,
            priority = "high",
            scale = 0.5,
            shift = { 1, 0.6 },
            width = 192,
            y = 128
        },
        smoke = {
            {
                deviation = { 0.15, 0.15 },
                frequency = 1,
                name = "smoke-fast",
                position = { 0, 0 },
                starting_frame = 3,
                starting_frame_deviation = 5,
                starting_frame_speed_deviation = 5
            }
        },
        stack_size = 50,
    }
})
