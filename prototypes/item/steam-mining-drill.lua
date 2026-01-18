local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steam-mining-drill",

        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/burner-mining-drill.png",
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steam.png",
                icon_size = 64,
                scale = 0.25,
                shift = { -8.5, 8.5 }
            }
        },
        order = "a[items]-a[steam-mining-drill]",
        place_result = "steam-mining-drill",
        stack_size = 50,
        weight = 20000,
        subgroup = "extraction-machine",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
