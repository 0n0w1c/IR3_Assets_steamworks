data:extend({
    {
        type = "recipe",
        name = "empty-cell",

        always_show_products = true,
        category = "crafting",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {
                type = "item",
                name = "copper-plate",
                amount = 1
            },
            {
                type = "item",
                name = "copper-rivet",
                amount = 2
            },
        },
        results = {
            {
                type = "item",
                name = "empty-cell",
                amount = 1,
            },
        },
        show_amount_in_title = false,
    }
})
