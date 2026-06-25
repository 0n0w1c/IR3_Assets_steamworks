local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-boiler",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-boiler.png",
                icon_size = 64
            }
        },
        subgroup = "energy",
        order = "a[steam-power]-a[copper-boiler]",
        place_result = "copper-boiler",
        stack_size = 50,
        weight = 20000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
