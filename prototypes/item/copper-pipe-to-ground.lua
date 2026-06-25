local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-pipe-to-ground",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pipe-to-ground.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-copper",
        order = "a[copper-pipe]-c[copper-pipe-to-ground]",
        place_result = "copper-pipe-to-ground",
        stack_size = 50,
        weight = 20000,
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move
    }
})
