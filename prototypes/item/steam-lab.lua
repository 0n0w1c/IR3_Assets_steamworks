local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-lab",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-lab.png",
                icon_size = 64
            }
        },
        order = "z[a-steam-lab]",
        place_result = "steam-lab",
        stack_size = 10,
        weight = 100000,
        subgroup = "production-machine",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
