local item_sounds = require("__base__/prototypes/item_sounds")

local subgroup = "extraction-machine"
if mods["offshore-burner"] then
    subgroup = "steamworks-copper"
end

data:extend({
    {
        type = "item",
        name = "copper-offshore-pump",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-pump.png",
                icon_size = 64
            }
        },
        subgroup = subgroup,
        order = "b[fluids]-a[copper-offshore-pump]",
        place_result = "copper-offshore-pump",
        stack_size = 20,
        weight = 50000,
        inventory_move_sound = item_sounds.fluid_inventory_move,
        pick_sound = item_sounds.fluid_inventory_pickup,
        drop_sound = item_sounds.fluid_inventory_move
    }
})
