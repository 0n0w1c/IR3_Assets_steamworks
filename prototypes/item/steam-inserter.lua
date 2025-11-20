data:extend({
    {
        type = "item",
        name = "steam-inserter",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-inserter.png",
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_size = 64,
                scale = 0.25,
                shift = { -8, 8 }
            }
        },
        order = "a[inserter]-a[steam-inserter]",
        place_result = "steam-inserter",
        stack_size = 100,
        subgroup = "inserter",
    }
})
