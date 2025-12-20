data:extend({
    {
        name = "wood-beam",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "wood",
                amount = 1,
            },
        },
        results = {
            {
                type = "item",
                name = "wood-beam",
                amount = 2,
            },
        },
        enabled = false,
    },
    {
        name = "copper-plated-beam",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "wood-beam",
                amount = 1,
            },
            {
                type = "item",
                name = "copper-plate",
                amount = 2,
            },
            {
                type = "item",
                name = "copper-rivet",
                amount = 1,
            },
        },
        results = {
            {
                type = "item",
                name = "copper-plated-beam",
                amount = 1,
            },
        },
        enabled = false,
    },
    {
        name = "copper-gear-wheel",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "copper-plate",
                amount = 2,
            },
        },
        results = {
            {
                type = "item",
                name = "copper-gear-wheel",
                amount = 1,
            },
        },
        enabled = false,
    },
    {
        name = "copper-rod",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "copper-plate",
                amount = 1,
            },
        },
        results = {
            {
                type = "item",
                name = "copper-rod",
                amount = 2,
            },
        },
        enabled = false,
    },
    {
        name = "copper-rivet",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "copper-rod",
                amount = 1,
            },
        },
        results = {
            {
                type = "item",
                name = "copper-rivet",
                amount = 2,
            },
        },
        enabled = false,
    },
    {
        name = "copper-piston",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "copper-plate",
                amount = 2,
            },
            {
                type = "item",
                name = "copper-rod",
                amount = 1,
            },
        },
        results = {
            {
                type = "item",
                name = "copper-piston",
                amount = 1,
            },
        },
        enabled = false,
    },
    {
        name = "small-copper-frame",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "copper-plate",
                amount = 6,
            },
            {
                type = "item",
                name = "copper-plated-beam",
                amount = 4,
            },
            {
                type = "item",
                name = "copper-rivet",
                amount = 2,
            },
        },
        results = {
            {
                type = "item",
                name = "small-copper-frame",
                amount = 1,
            },
        },
        enabled = false,
        energy_required = 2.5
    },
    {
        name = "large-copper-frame",
        type = "recipe",
        ingredients = {
            {
                type = "item",
                name = "copper-plate",
                amount = 12,
            },
            {
                type = "item",
                name = "copper-plated-beam",
                amount = 8,
            },
            {
                type = "item",
                name = "copper-rivet",
                amount = 4,
            },
        },
        results = {
            {
                type = "item",
                name = "large-copper-frame",
                amount = 1,
            },
        },
        enabled = false,
        energy_required = 2.5
    },
})
