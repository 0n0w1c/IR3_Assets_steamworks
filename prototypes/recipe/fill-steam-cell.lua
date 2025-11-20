data:extend({
    {
        type = "recipe",
        name = "fill-steam-cell",

        auto_recycle = false,
        allow_decomposition = false,
        always_show_made_in = true,
        always_show_products = true,
        hide_from_player_crafting = true,
        category = "steam-barrelling",
        crafting_machine_tint = {
            tertiary = { r = 1, g = 1, b = 1, a = 1 }
        },
        enabled = false,
        energy_required = 1,
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-cell.png",
                icon_mipmaps = 4,
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { -7, -7 },
                tint = { r = 0, g = 0, b = 0, a = 0.4 }
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { -8.5, -8.5 }
            }
        },
        ingredients = {
            {
                type = "item",
                name = "empty-cell",
                amount = 1,
            },
            {
                type = "fluid",
                name = "steam",
                amount = 100,
                minimum_temperature = 165,
            }
        },
        order = "d[steam-pipe]-j[fill-steam-cell]",
        results = {
            {
                type = "item",
                name = "steam-cell",
                amount = 1,
            }
        },
        show_amount_in_title = false,
        subgroup = "steamworks-steam",
    }
})
