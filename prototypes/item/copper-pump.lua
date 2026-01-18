local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-pump",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-valve.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        place_result = "copper-pump",
        stack_size = 100,
        subgroup = "steamworks-copper",
        order = "a[copper-pipe]-e[copper-pump]",
        weight = 10000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
