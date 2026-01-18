local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-aetheric-lamp-end",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-aetheric-lamp.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        order = "a[light]-a[copper-aetheric-lamp-end]",
        place_result = "copper-aetheric-lamp-end",
        stack_size = 100,
        subgroup = "circuit-network",
        weight = 10000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
