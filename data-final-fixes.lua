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
