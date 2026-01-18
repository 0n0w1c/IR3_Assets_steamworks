local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steambot",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steambot.png",
                icon_mipmaps = 4,
                icon_size = 64
            }
        },
        order = "a[bot]-a[steambot]",
        place_result = "steambot",
        stack_size = 50,
        subgroup = "logistic-network",
        weight = 20000,
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move
    }
})
