local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-pipe-to-ground-short",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-pipe-to-ground-short.png",
                icon_size = 64
            }
        },
        order = "d[steam-pipe]-b[steam-pipe-to-ground-short]",
        place_result = "steam-pipe-to-ground-short",
        stack_size = 50,
        subgroup = "steamworks-steam",
        weight = 20000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
