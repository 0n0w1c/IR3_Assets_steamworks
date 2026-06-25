local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-pipe-to-ground-short",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pipe-to-ground-short.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-copper",
        order = "a[copper-pipe]-b[copper-pipe-to-ground-short]",
        place_result = "copper-pipe-to-ground-short",
        stack_size = 50,
        weight = 20000,
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move
    }
})
