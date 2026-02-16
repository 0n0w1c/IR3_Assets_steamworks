local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        name = "steam-beacon",
        type = "item",

        icon = "__IR3_Assets_steamworks__/graphics/icons/steam-beacon.png",
        icon_size = 64,
        place_result = "steam-beacon",
        subgroup = "module",
        order = "a[a-beacon]",
        stack_size = 20,
        weight = 50000,
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move
    }
})
