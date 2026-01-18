local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-cell",

        burnt_result = "empty-cell",
        fuel_category = "steam-cell",
        fuel_value = "3000kJ",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam-cell.png",
        icon_size = 64,
        order = "a",
        subgroup = "steamworks-steam",
        stack_size = 50,
        weight = 10000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
