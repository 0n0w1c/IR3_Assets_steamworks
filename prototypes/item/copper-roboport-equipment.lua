data:extend({
    {
        type = "item",
        name = "copper-roboport-equipment",

        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-personal-roboport.png",
        icon_size = 64,
        order = "e[robotics]-a[copper-roboport-equipment]",
        place_as_equipment_result = "copper-roboport-equipment",
        stack_size = 10,
        subgroup = "utility-equipment",
        weight = 100000,
        inventory_move_sound = {
            filename = "__base__/sound/item/roboport-inventory-move.ogg",
            volume = 0.45,
            aggregation = {
                max_count = 1,
                remove = true,
            },
        },
        pick_sound = {
            filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
            volume = 0.35,
            aggregation = {
                max_count = 1,
                remove = true,
            },
        },
        drop_sound = {
            filename = "__base__/sound/item/roboport-inventory-move.ogg",
            volume = 0.45,
            aggregation = {
                max_count = 1,
                remove = true,
            },
        },
    }
})
