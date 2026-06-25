data:extend({
    {
        type = "recipe",
        name = "empty-filled-cell",

        auto_recycle = false,
        allow_decomposition = false,
        always_show_made_in = true,
        hide_from_player_crafting = true,
        categories = { "steam-unbarrelling" },
        crafting_machine_tint = {
            tertiary = { a = 1, b = 1, g = 1, r = 1 }
        },
        enabled = false,
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/empty-steam-cell.png",
                icon_size = 64
            }
        },
        ingredients = {
            {
                type = "item",
                name = "steam-cell",
                amount = 1,
            }
        },
        order = "d[steam-pipe]-i[empty-filled-cell]",
        results = {
            {
                type = "item",
                name = "empty-cell",
                amount = 1,
            },
            {
                type = "fluid",
                name = "steam",
                amount = 100,
                temperature = 165,
            }
        },
        subgroup = "steamworks-steam",
    }
})
