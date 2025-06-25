---@param name string Recipe identifier
---@return data.TechnologyPrototype | boolean | nil
function Prerequisites(name)
    for tech_name, tech in pairs(data.raw.technology) do
        if tech.effects then
            for a, b in pairs(tech.effects) do
                if b.recipe == name and tech.enabled ~= false then
                    return tech
                end
            end
        end
    end
    return data.raw.recipe[name].enabled or true
end


---@param destination table
---@param origin table
---@return table|nil
function table.merge(destination, origin)
    if destination and origin then
        for key, value in pairs(origin) do
            table.insert(destination, value)
        end
    end
    return destination
end




---@param name string Recipe identifier
---@return table|nil
function finalize_productivity(name, content)
--WIP
end
