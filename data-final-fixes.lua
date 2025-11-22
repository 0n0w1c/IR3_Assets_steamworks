if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

local tools = data.raw["tool"]
local lab = data.raw["lab"]["steam-lab"]

lab.inputs = {}

for _, tool in pairs(tools) do
    if tool.subgroup == "science-pack" then
        table.insert(lab.inputs, tool.name)
    end
end
