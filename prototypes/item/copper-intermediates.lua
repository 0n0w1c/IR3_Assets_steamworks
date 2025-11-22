local items = data.raw["item"]
local item = {}

item = items["copper-plate"]
item.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-plate.png"

data:extend({
    {
        type = "item",
        name = "wood-beam",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/wood-beam.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-a[wood-beam]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "copper-plated-beam",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-beam.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-b[copper-plated-beam]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "copper-gear-wheel",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-gear-wheel.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-c[copper-gear-wheel]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "copper-rod",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-rod.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-d[copper-rod]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "copper-rivet",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-rivet.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-e[copper-rivet]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "copper-piston",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-piston.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-f[copper-piston]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "small-copper-frame",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-frame-small.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-g[small-copper-frame]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "large-copper-frame",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-frame-large.png",
                icon_size = 64
            }
        },
        subgroup = "steamworks-intermediates",
        order = "r[copper-pipe]-h[large-copper-frame]",
        stack_size = 50,
    },
})
