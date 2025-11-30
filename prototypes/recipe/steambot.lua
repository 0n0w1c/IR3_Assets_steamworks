data:extend({
    {
        type = "recipe",
        name = "steambot",

        allow_decomposition = false,
        always_show_made_in = true,
        always_show_products = true,
        category = "crafting",
        crafting_machine_tint = {
            tertiary = { a = 1, b = 1, g = 1, r = 1 }
        },
        enabled = false,
        energy_required = 1,
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steambot.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        ingredients = {
            {
                type = "item",
                name = "small-copper-frame",
                amount = 1,
            },
            {
                type = "item",
                name = "copper-gear-wheel",
                amount = 2,
            },
            {
                type = "item",
                name = "copper-rivet",
                amount = 2,
            }
        },
        results = {
            {
                type = "item",
                name = "steambot",
                amount = 1,
            },
        },
        show_amount_in_title = false,
    }
})
