data:extend({
    {
        type = "projectile",
        name = "bullet-66-100-6",

        hidden_in_factoriopedia = true,
        acceleration = 0,
        action = {
            action_delivery = {
                target_effects = {
                    {
                        entity_name = "explosion-hit",
                        type = "create-entity"
                    },
                    {
                        damage = {
                            amount = 6,
                            type = "physical"
                        },
                        type = "damage"
                    }
                },
                type = "instant"
            },
            type = "direct"
        },
        animation = {
            blend_mode = "additive",
            draw_as_glow = true,
            filename = "__IndustrialRevolution3Assets2__/graphics/entities/projectiles/bullet.png",
            frame_count = 1,
            height = 100,
            priority = "high",
            scale = 0.5,
            tint = { r = 1, g = 0.85, b = 0.75, a = 1 },
            width = 7
        },
        collision_box = {
            { -0.05, -0.25 },
            { 0.05,  0.25 }
        },
        direction_only = true,
        flags = { "not-on-map" },
        force_condition = "not-same",
        hit_at_collision_position = true,
        piercing_damage = 0,
    }
})
