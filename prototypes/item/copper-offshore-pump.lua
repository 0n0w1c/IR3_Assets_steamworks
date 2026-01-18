local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "copper-offshore-pump",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pump.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        subgroup = "extraction-machine",
        order = "b[fluids]-a[copper-offshore-pump]",
        place_result = "copper-offshore-pump",
        stack_size = 20,
        weight = 50000,
        inventory_move_sound = item_sounds.fluid_inventory_move,
        pick_sound = item_sounds.fluid_inventory_pickup,
        drop_sound = item_sounds.fluid_inventory_move
    }
})
