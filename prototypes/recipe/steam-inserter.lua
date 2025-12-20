data:extend({
    {
        type = "recipe",
        name = "steam-inserter",

        always_show_products = true,
        category = "crafting",
        enabled = false,
        ingredients = {
            { type = "item", name = "steam-pipe",      amount = 1 },
            { type = "item", name = "copper-piston",   amount = 1 },
            { type = "item", name = "burner-inserter", amount = 1 }
        },
        results = {
            {
                type = "item",
                name = "steam-inserter",
                amount = 1,
            },
        },
        show_amount_in_title = false,
    }
})
