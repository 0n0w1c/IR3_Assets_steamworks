data:extend({
    {
        type = "recipe",
        name = "monowheel",

        always_show_products = true,
        category = "crafting",
        enabled = false,
        energy_required = 4,
        ingredients = {
            { type = "item", name = "large-copper-frame",         amount = 1 },
            { type = "item", name = "copper-piston",              amount = 8 },
            { type = "item", name = "copper-gear-wheel",          amount = 8 },
            { type = "item", name = "steam-unbarrelling-machine", amount = 1 },
            { type = "item", name = "steam-pipe",                 amount = 4 }
        },
        results = { { type = "item", name = "monowheel", amount = 1 } },
        show_amount_in_title = false,
    }
})
