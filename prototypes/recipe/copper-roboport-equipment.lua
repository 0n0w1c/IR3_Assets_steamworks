data:extend({
    {
        type = "recipe",
        name = "copper-roboport-equipment",

        category = "crafting",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {
                type = "item",
                name = "small-copper-frame",
                amount = 1
            },
            {
                type = "item",
                name = "steam-unbarrelling-machine",
                amount = 1
            },
            {
                type = "item",
                name = "copper-piston",
                amount = 4
            },
            {
                type = "item",
                name = "copper-rivet",
                amount = 4
            },
        },
        results = {
            { type = "item", name = "copper-roboport-equipment", amount = 1 },
        },
        show_amount_in_title = false,
    }
})
