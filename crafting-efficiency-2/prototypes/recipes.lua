require("functions")

function table.removekey(table, key)
    local element = table[key]
    table[key] = nil
    return element
end

local function add_research(name, stage, stage_level)
    local packs = stage.stages_packs[stage_level]
    local max_level = 0
    local tech = {
        type = "technology",
        upgrade = false,
        localised_name = { "technology-name.technology-productivity", stage.name, " (" .. stage_level .. ")" },
        effects = {
            {
                change = stage.stages_productivities[stage_level] / 100,
                recipe = name,
                type = "change-recipe-productivity"
            },
        },
    }
    for x = 1 , stage_level-1 do
        if type(stage.stages_levels[x]) == "number" then 
            max_level = max_level + stage.stages_levels[x]
        end
    end

    
    if stage.stages == stage_level then
        tech.max_level = "infinite"
        tech.name = "ce-" .. name .. "-" .. max_level+1
    else
        tech.max_level = 0
        for x = 1 , stage_level do
            tech.max_level = tech.max_level + stage.stages_levels[x]
        end
        tech.name = "ce-" .. name .. "-" .. max_level+1
    end

    local prerequisites = {}


    if stage_level > 1 then
        table.insert(prerequisites, "ce-" .. name .. "-" .. max_level-stage.stages_levels[stage_level-1]+1)
        tech.upgrade = true
    else
        if stage.prerequisites then
            for a, b in pairs(stage.prerequisites) do
                table.insert(prerequisites, b)
            end
        end
        for a, b in pairs(packs) do
            if b[1] ~= name then
                table.insert(prerequisites, b[1])
            end
        end
    end
    if Icons[name] and Icons[name].icons then
        tech.icons = Icons[name].icons
    elseif Icons[name] and Icons[name].icon then
        tech.icon = Icons[name].icon
        tech.icon_size = Icons[name].icon_size
    elseif stage.icon then
        tech.icon = stage.icon
        tech.icon_size = stage.icon_size
    elseif stage.icons then
        tech.icons = stage.icons 
    elseif stage.fluid then
        tech.icon = "__base__/graphics/icons/fluid/" .. name .. ".png"
    else
        tech.icon = "__base__/graphics/icons/" .. name .. ".png"
    end



    local cond = false
    local name_tech = ""
    if stage_level == 1 then
        for a, b in pairs(CE_research) do
            for d, c in pairs(b[1].effects) do
                if c.type == "unlock-recipe" then
                    if c.recipe == name and not b[1].hidden then
                        name_tech = a
                        cond = true
                    end
                end
            end
        end
    end


    if cond and name_tech ~= "" and stage_level == 1 then
        table.insert(prerequisites, name_tech)
    end
    local unit = {}
    unit.count_formula = tostring(stage.stages_costs[stage_level]) .. " * " .. tostring(stage.stages_cost_multipliers[stage_level]) .. " * l"
    unit.ingredients = packs
    unit.time = stage.stages_times[stage_level]
    tech.unit = unit
    tech.prerequisites = prerequisites
    

    data:extend({ tech })
end


function Add_items()
    for i, v in pairs(Recipes) do
        for x = 1, v.stages do
            add_research(i, v, x)
        end
    end
end

CE_research = {}
Icons = {}

for name, research in pairs(data.raw.technology) do
    if research.effects then
        for a, b in pairs(research.effects) do
            if b.type == "unlock-recipe" then
                if Recipes[b.recipe] then
                    CE_research[name] = {research}
                    Icons[b.recipe] = research
                    if not research.icon and not research.icons then
                        table.insert(Icons[name], data.raw.recipe.icon)
                        table.insert(Icons[name], data.raw.recipe.icon_size)
                        table.insert(Icons[name], data.raw.recipe.icons)
                    end
                end
            end
        end
    end
end
