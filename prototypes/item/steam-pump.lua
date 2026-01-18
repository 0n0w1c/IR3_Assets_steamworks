local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-pump",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-valve.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        place_result = "steam-pump",
        stack_size = 100,
        subgroup = "steamworks-steam",
        order = "d[steam-pipe]-e[steam-pump]",
        weight = 10000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
