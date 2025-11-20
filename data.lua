if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("constants")

data:extend({
    {
        type = "fuel-category",
        name = "steam-cell",
    }
})

data:extend({
    {
        type = "item-subgroup",
        name = "steamworks-intermediates",
        group = "intermediate-products",
        order = "f",
    },
    {
        type = "item-subgroup",
        name = "steamworks-copper",
        group = "logistics",
        order = "cb",
    },
    {
        type = "item-subgroup",
        name = "steamworks-steam",
        group = "logistics",
        order = "cb",
    },
    {
        type = "item-subgroup",
        name = "ir3-glows",
        group = "logistics",
        order = "cb",
    }
})

data:extend({
    {
        type = "recipe-category",
        name = "steam-barrelling",
        order = "a",
    },
    {
        type = "recipe-category",
        name = "steam-unbarrelling",
        order = "a",
    },
    {
        type = "recipe-category",
        name = "glowing",
        order = "a",
    },
})

if not mods["crushing-industries"] then
    data:extend({
        {
            type = "recipe-category",
            name = "basic-crushing",
            order = "a",
        },
    })
end

data:extend({
    {
        name = "steam",
        type = "trivial-smoke",
        duration = 180,
        fade_in_duration = 0,
        fade_away_duration = 180,
        spread_duration = 180,
        start_scale = 0.2,
        end_scale = 1,
        color = { r = 1, g = 1, b = 1, a = 0.8 },
        cyclic = true,
        affected_by_wind = true,
        animation = {
            width = 152,
            height = 120,
            line_length = 5,
            frame_count = 60,
            shift = { -0.53125, -0.4375 },
            priority = "high",
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/smoke/smoke.png",
            flags = { "smoke" },
        }
    }
})

local technology = data.raw["technology"]["steam-power"]

require("prototypes/item/copper-intermediates")
require("prototypes/recipe/copper-intermediates")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "wood-beam" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-plated-beam" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-gear" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-rod" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-rivet" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-piston" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "small-copper-frame" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "large-copper-frame" })

require("prototypes/explosion/copper-pipe")
require("prototypes/entity/copper-pipe")
require("prototypes/item/copper-pipe")
require("prototypes/recipe/copper-pipe")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-pipe" })

require("prototypes/explosion/steam-pipe")
require("prototypes/entity/steam-pipe")
require("prototypes/item/steam-pipe")
require("prototypes/recipe/steam-pipe")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-pipe" })

require("prototypes/explosion/copper-pipe-to-ground")
require("prototypes/entity/copper-pipe-to-ground")
require("prototypes/item/copper-pipe-to-ground")
require("prototypes/recipe/copper-pipe-to-ground")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-pipe-to-ground" })

require("prototypes/explosion/copper-pipe-to-ground-short")
require("prototypes/entity/copper-pipe-to-ground-short")
require("prototypes/item/copper-pipe-to-ground-short")
require("prototypes/recipe/copper-pipe-to-ground-short")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-pipe-to-ground-short" })

require("prototypes/explosion/steam-pipe-to-ground")
require("prototypes/entity/steam-pipe-to-ground")
require("prototypes/item/steam-pipe-to-ground")
require("prototypes/recipe/steam-pipe-to-ground")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-pipe-to-ground" })

require("prototypes/explosion/steam-pipe-to-ground-short")
require("prototypes/entity/steam-pipe-to-ground-short")
require("prototypes/item/steam-pipe-to-ground-short")
require("prototypes/recipe/steam-pipe-to-ground-short")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-pipe-to-ground-short" })

require("prototypes/explosion/small-storage-tank-steam")
require("prototypes/entity/small-storage-tank-steam")
require("prototypes/item/small-storage-tank-steam")
require("prototypes/recipe/small-storage-tank-steam")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "small-storage-tank-steam" })

require("prototypes/explosion/copper-offshore-pump")
require("prototypes/entity/copper-offshore-pump")
require("prototypes/item/copper-offshore-pump")
require("prototypes/recipe/copper-offshore-pump")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-offshore-pump" })

require("prototypes/explosion/copper-boiler")
require("prototypes/entity/copper-boiler")
require("prototypes/item/copper-boiler")
require("prototypes/recipe/copper-boiler")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-boiler" })

require("prototypes/explosion/copper-pump")
require("prototypes/entity/copper-pump")
require("prototypes/item/copper-pump")
require("prototypes/recipe/copper-pump")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-pump" })

require("prototypes/explosion/steam-pump")
require("prototypes/entity/steam-pump")
require("prototypes/item/steam-pump")
require("prototypes/recipe/steam-pump")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-pipe" })

require("prototypes/explosion/steam-barrelling-machine")
require("prototypes/entity/steam-barrelling-machine")
require("prototypes/item/steam-barrelling-machine")
require("prototypes/recipe/steam-barrelling-machine")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-barrelling-machine" })

require("prototypes/explosion/steam-unbarrelling-machine")
require("prototypes/entity/steam-unbarrelling-machine")
require("prototypes/item/steam-unbarrelling-machine")
require("prototypes/recipe/steam-unbarrelling-machine")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-unbarrelling-machine" })

require("prototypes/item/empty-cell")
require("prototypes/item/steam-cell")
require("prototypes/recipe/empty-cell")
require("prototypes/recipe/empty-filled-cell")
require("prototypes/recipe/fill-steam-cell")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "empty-cell" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "empty-filled-cell" })
table.insert(technology.effects, { type = "unlock-recipe", recipe = "fill-steam-cell" })

require("prototypes/entity/copper-roboport-equipment")
require("prototypes/item/copper-roboport-equipment")
require("prototypes/recipe/copper-roboport-equipment")

require("prototypes/entity/bullet-66-100-6")

require("prototypes/corpse/scatterbot-remnants")
require("prototypes/entity/scatterbot")

require("prototypes/entity/scatterbot-capsule")
require("prototypes/capsule/scatterbot-capsule")
require("prototypes/recipe/scatterbot-capsule")
require("prototypes/technology/scatterbot-capsule")

require("prototypes/corpse/steambot-remnants")
require("prototypes/explosion/steambot")
require("prototypes/entity/steambot")
require("prototypes/item/steambot")
require("prototypes/recipe/steambot")
require("prototypes/technology/steambot")

require("prototypes/explosion/copper-aetheric-lamp-end")
require("prototypes/entity/copper-aetheric-lamp-end")
require("prototypes/item/copper-aetheric-lamp-end")
require("prototypes/recipe/copper-aetheric-lamp-end")
require("prototypes/recipe/aetheric-glows")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "copper-aetheric-lamp-end" })

require("prototypes/explosion/steam-mining-drill")
require("prototypes/entity/steam-mining-drill")
require("prototypes/item/steam-mining-drill")
require("prototypes/recipe/steam-mining-drill")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-mining-drill" })

require("prototypes/explosion/steam-inserter")
require("prototypes/entity/steam-inserter")
require("prototypes/item/steam-inserter")
require("prototypes/recipe/steam-inserter")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-inserter" })

require("prototypes/explosion/long-handed-steam-inserter")
require("prototypes/entity/long-handed-steam-inserter")
require("prototypes/item/long-handed-steam-inserter")
require("prototypes/recipe/long-handed-steam-inserter")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "long-handed-steam-inserter" })

require("prototypes/explosion/steam-assembling-machine")
require("prototypes/entity/steam-assembling-machine")
require("prototypes/item/steam-assembling-machine")
require("prototypes/recipe/steam-assembling-machine")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-assembling-machine" })

require("prototypes/explosion/small-steam-assembling-machine")
require("prototypes/entity/small-steam-assembling-machine")
require("prototypes/item/small-steam-assembling-machine")
require("prototypes/recipe/small-steam-assembling-machine")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "small-steam-assembling-machine" })

require("prototypes/explosion/steam-crusher")
require("prototypes/entity/steam-crusher")
require("prototypes/item/steam-crusher")
require("prototypes/recipe/steam-crusher")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-crusher" })

require("prototypes/explosion/steam-lab")
require("prototypes/entity/steam-lab")
require("prototypes/item/steam-lab")
require("prototypes/recipe/steam-lab")
table.insert(technology.effects, { type = "unlock-recipe", recipe = "steam-lab" })
