local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-crusher",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-grinder.png",
                icon_size = 64
            }
        },
        order = "a[items]-c[steam-crusher]",
        place_result = "steam-crusher",
        stack_size = 50,
        weight = 20000,
        subgroup = "extraction-machine",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
