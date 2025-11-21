data:extend({
    {
        type = "technology",
        name = "steambot",

        effects = {
            { type = "unlock-recipe", recipe = "steambot" },
            { type = "unlock-recipe", recipe = "copper-roboport-equipment" },
        },

        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/256/steambot.png",
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
        prerequisites = { "steam-automation" },

        unit = {
            count = 20,
            ingredients = {
                { "automation-science-pack", 1 }
            },
            time = 30
        },

        upgrade = false
    }
})
