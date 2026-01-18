local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-barrelling-machine",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-barrelling-machine.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        subgroup = "steamworks-steam",
        order = "d[steam-pipe]-f[steam-barrelling-machine]",
        place_result = "steam-barrelling-machine",
        stack_size = 50,
        weight = 20000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
