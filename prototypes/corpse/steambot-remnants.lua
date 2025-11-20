data:extend({
    {
        type = "corpse",
        name = "steambot-remnants",
        hidden_in_factoriopedia = true,

        animation = {
            {
                direction_count = 1,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-remnants.png",
                frame_count = 1,
                height = 128,
                line_length = 1,
                scale = 0.5,
                shift = { 0.25, 0 },
                variation_count = 1,
                width = 128,
                y = 0
            },
            {
                direction_count = 1,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-remnants.png",
                frame_count = 1,
                height = 128,
                line_length = 1,
                scale = 0.5,
                shift = { 0.25, 0 },
                variation_count = 1,
                width = 128,
                y = 128
            },
            {
                direction_count = 1,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-remnants.png",
                frame_count = 1,
                height = 128,
                line_length = 1,
                scale = 0.5,
                shift = { 0.25, 0 },
                variation_count = 1,
                width = 128,
                y = 256
            },
            {
                direction_count = 1,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/bots/steambot-remnants.png",
                frame_count = 1,
                height = 128,
                line_length = 1,
                scale = 0.5,
                shift = { 0.25, 0 },
                variation_count = 1,
                width = 128,
                y = 384
            }
        },
        collision_box = {
            { -0.4, -0.4 },
            { 0.4,  0.4 }
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
                        initial_height = 0.75,
                        initial_vertical_speed = 0.07,
                        initial_vertical_speed_deviation = 0.1,
                        offset_deviation = {
                            { -0.2, -0.2 },
                            { 0.2,  0.2 }
                        },
                        particle_name = "copper-particle",
                        probability = 1,
                        repeat_count = 8,
                        speed_from_center = 0.04,
                        speed_from_center_deviation = 0.02,
                        type = "create-particle"
                    },
                    {
                        damage_type_filters = {
                            "fire",
                            "impact"
                        },
                        frame_speed = 1,
                        frame_speed_deviation = 0.1,
                        initial_height = 0.75,
                        initial_vertical_speed = 0.07,
                        initial_vertical_speed_deviation = 0.1,
                        offset_deviation = {
                            { -0.2, -0.2 },
                            { 0.2,  0.2 }
                        },
                        particle_name = "copper-particle",
                        probability = 1,
                        repeat_count = 8,
                        speed_from_center = 0.04,
                        speed_from_center_deviation = 0.02,
                        type = "create-particle"
                    }
                },
                type = "instant"
            },
            type = "direct"
        },
        final_render_layer = "remnants",
        flags = {
            "placeable-neutral",
            "not-on-map"
        },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steambot.png",
        icon_size = 64,
        order = "d[remnants]-z",
        remove_on_tile_placement = false,
        selectable_in_game = false,
        selection_box = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        time_before_removed = 7200,
    }
})
