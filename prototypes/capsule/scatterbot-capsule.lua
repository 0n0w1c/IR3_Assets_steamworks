data:extend({
    {
        type = "capsule",
        name = "scatterbot-capsule",

        capsule_action = {
            attack_parameters = {
                activation_type = "throw",
                ammo_category = "capsule",
                ammo_type = {
                    action = {
                        action_delivery = {
                            projectile = "scatterbot-capsule",
                            starting_speed = 0.3,
                            type = "projectile"
                        },
                        type = "direct"
                    },
                    category = "capsule",
                    target_type = "position"
                },
                cooldown = 15,
                projectile_creation_distance = 0.6,
                range = 20,
                type = "projectile"
            },
            type = "throw"
        },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/scatterbot.png",
        icon_size = 64,
        order = "a[a-grenade]-a[scatterbot]",
        stack_size = 50,
        subgroup = "capsule",
        weight = 20000
    }
})
