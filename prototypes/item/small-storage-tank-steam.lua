local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "small-storage-tank-steam",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/small-tank-steam.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        order = "b[fluid]-a[small-storage-tank-steam]",
        place_result = "small-storage-tank-steam",
        stack_size = 50,
        subgroup = "storage",
        weight = 10000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
