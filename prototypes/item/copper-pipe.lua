local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-pipe",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pipe.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        subgroup = "steamworks-copper",
        order = "a[copper-pipe]-a[copper-pipe]",
        place_result = "copper-pipe",
        stack_size = 100,
        weight = 5000,
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move
    }
})
