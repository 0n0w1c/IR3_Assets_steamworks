data:extend({
    {
        type = "recipe",
        name = "long-handed-steam-inserter",

        always_show_products = true,
        category = "crafting",
        enabled = false,
        ingredients = {
            { type = "item", name = "copper-rod",        amount = 1 },
            { type = "item", name = "copper-gear-wheel", amount = 1 },
            { type = "item", name = "steam-inserter",    amount = 1 }
        },
        results = {
            {
                type = "item",
                name = "long-handed-steam-inserter",
                amount = 1,
            },
        },
        show_amount_in_title = false,
    }
})
