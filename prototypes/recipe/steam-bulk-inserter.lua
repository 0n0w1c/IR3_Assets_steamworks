data:extend({
    {
        type = "recipe",
        name = "steam-bulk-inserter",

        always_show_products = true,
        category = "crafting",
        enabled = false,
        ingredients = {
            { type = "item", name = "copper-gear-wheel",    amount = 15, },
            { type = "item", name = "electronic-circuit", amount = 15, },
            { type = "item", name = "advanced-circuit",   amount = 1, },
            { type = "item", name = "steam-inserter",     amount = 1 }
        },
        results = {
            {
                type = "item",
                name = "steam-bulk-inserter",
                amount = 1,
            },
        },
        show_amount_in_title = false,
    }
})
