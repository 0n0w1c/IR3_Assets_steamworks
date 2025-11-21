data:extend({
    {
        type = "technology",
        name = "scatterbot-capsule",

        effects = {
            { type = "unlock-recipe", recipe = "scatterbot-capsule" },
        },

        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/256/scatterbot.png",
                icon_size = 256,
            },
            {
                icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
                icon_size = 128,
                scale = 0.5,
                shift = { 50, 50 },
                floating = true
            }
        },

        order = "a",
        prerequisites = { "steambot" },

        unit = {
            count = 20,
            ingredients = { { "automation-science-pack", 1 } },
            time = 30
        },

        upgrade = false
    }
})
