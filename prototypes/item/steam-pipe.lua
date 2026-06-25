local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-pipe",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-pipe.png",
                icon_size = 64
            }
        },
        order = "d[steam-pipe]-a[steam-pipe]",
        place_result = "steam-pipe",
        stack_size = 100,
        subgroup = "steamworks-steam",
        weight = 5000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
