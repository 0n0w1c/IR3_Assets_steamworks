local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "long-handed-steam-inserter",

        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/long-handed-steam-inserter.png",
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_size = 64,
                scale = 0.25,
                shift = { -8, 8 }
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/long-handed.png",
                icon_size = 64,
                scale = 0.25,
                shift = { -8, 8 }
            }
        },
        order = "a[inserter]-b[long-handed-steam-inserter]",
        place_result = "long-handed-steam-inserter",
        stack_size = 50,
        subgroup = "inserter",
        weight = 20000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
