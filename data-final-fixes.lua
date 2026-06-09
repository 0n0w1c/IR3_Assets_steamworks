if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

local armor = data.raw["armor"]["heavy-armor"]
if armor then
    armor.equipment_grid = "heavy-armor-grid"
end

local technology = data.raw["technology"]["automation-science-pack"]
if technology then
    technology.research_trigger = { type = "craft-item", item = "steam-lab" }
end

local tools = data.raw["tool"]
local lab = data.raw["lab"]["steam-lab"]
if lab then
    lab.inputs = {}

    for _, tool in pairs(tools) do
        if tool.subgroup == "science-pack" then
            table.insert(lab.inputs, tool.name)
        end
    end
end

local recipes = data.raw["recipe"]
local recipe = {}

if mods["IR3_Assets_mining_drills"] then
    recipe = recipes["burner-mining-drill"]
    if recipe then
        recipe.ingredients = {
            { type = "item", name = "copper-plate",      amount = 3, },
            { type = "item", name = "copper-gear-wheel", amount = 3, },
            { type = "item", name = "stone-furnace",     amount = 1, },
        }
    end

    if mods["quality"] then
        local recycling = require("__quality__/prototypes/recycling")
        recycling.generate_recycling_recipe(recipe)
    end
end
