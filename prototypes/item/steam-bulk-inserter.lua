local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-bulk-inserter",
        icons = {
            {
                icon = "__IR3_Assets_steamworks__/graphics/icons/bulk-steam-inserter.png",
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_size = 64,
                scale = 0.25,
                shift = { -8, 8 }
            }
        },
        order = "a[inserter]-c[steam-inserter-bulk]",
        place_result = "steam-bulk-inserter",
        stack_size = 50,
        weight = 20000,
        subgroup = "inserter",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
