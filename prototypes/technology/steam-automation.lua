data:extend({
    {
        type = "technology",
        name = "steam-automation",

        effects = {
            { type = "unlock-recipe", recipe = "wood-beam" },
            { type = "unlock-recipe", recipe = "copper-plated-beam" },
            { type = "unlock-recipe", recipe = "copper-gear" },
            { type = "unlock-recipe", recipe = "copper-rod" },
            { type = "unlock-recipe", recipe = "copper-rivet" },
            { type = "unlock-recipe", recipe = "copper-piston" },
            { type = "unlock-recipe", recipe = "small-copper-frame" },
            { type = "unlock-recipe", recipe = "large-copper-frame" },
            { type = "unlock-recipe", recipe = "copper-pipe" },
            { type = "unlock-recipe", recipe = "steam-pipe" },
            { type = "unlock-recipe", recipe = "copper-pipe-to-ground" },
            { type = "unlock-recipe", recipe = "copper-pipe-to-ground-short" },
            { type = "unlock-recipe", recipe = "steam-pipe-to-ground" },
            { type = "unlock-recipe", recipe = "steam-pipe-to-ground-short" },
            { type = "unlock-recipe", recipe = "small-storage-tank-steam" },
            { type = "unlock-recipe", recipe = "copper-offshore-pump" },
            { type = "unlock-recipe", recipe = "copper-boiler" },
            { type = "unlock-recipe", recipe = "copper-pump" },
            { type = "unlock-recipe", recipe = "steam-pump" },
            { type = "unlock-recipe", recipe = "steam-barrelling-machine" },
            { type = "unlock-recipe", recipe = "steam-unbarrelling-machine" },
            { type = "unlock-recipe", recipe = "empty-cell" },
            { type = "unlock-recipe", recipe = "empty-filled-cell" },
            { type = "unlock-recipe", recipe = "fill-steam-cell" },
            { type = "unlock-recipe", recipe = "copper-aetheric-lamp-end" },
            { type = "unlock-recipe", recipe = "steam-mining-drill" },
            { type = "unlock-recipe", recipe = "steam-inserter" },
            { type = "unlock-recipe", recipe = "long-handed-steam-inserter" },
            { type = "unlock-recipe", recipe = "steam-assembling-machine" },
            { type = "unlock-recipe", recipe = "small-steam-assembling-machine" },
            { type = "unlock-recipe", recipe = "steam-crusher" },
            { type = "unlock-recipe", recipe = "steam-lab" },
        },

        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/256/assembler1.png",
                icon_size = 256,
            }
        },

        order = "a",
        prerequisites = { "automation-science-pack" },

        unit = {
            count = 10,
            ingredients = {
                { "automation-science-pack", 1 }
            },
            time = 15
        },

        upgrade = false
    }
})
