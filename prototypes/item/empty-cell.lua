local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "empty-cell",

        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/empty-cell.png",
        icon_mipmaps = 4,
        icon_size = 64,
        order = "b[fluid]-a[empty-cell]",
        stack_size = 50,
        subgroup = "storage",
        weight = 10000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
