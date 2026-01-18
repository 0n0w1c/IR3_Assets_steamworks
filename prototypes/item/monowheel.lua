local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item-with-entity-data",
        name = "monowheel",

        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/monowheel.png",
                icon_size = 64
            }
        },
        order = "ab",
        place_result = "monowheel",
        stack_size = 1,
        weight = 1000000,
        subgroup = "transport",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
