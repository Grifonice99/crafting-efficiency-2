function Add_research(name, stage, stage_level)
    local packs = stage.stages_packs[stage_level]
    local max_level = 0
    local tech = {
        type = "technology",
        upgrade = false,
        localised_name = { "technology-name.technology-productivity", stage.name },
        effects = {
        },
    }
    if stage.recipes ~= nil then
        for a, b in pairs(stage.recipes) do
            tech.effects[a] = {
                change = stage.stages_productivities[stage_level] / 100,
                recipe = b,
                type = "change-recipe-productivity"
            }
        end
    else
        tech.effects = { {
            change = stage.stages_productivities[stage_level] / 100,
            recipe = name,
            type = "change-recipe-productivity"
        } }
    end
    for x = 1, stage_level - 1 do
        if type(stage.stages_levels[x]) == "number" then
            max_level = max_level + stage.stages_levels[x]
        end
    end


    if stage.stages == stage_level then
        tech.max_level = "infinite"
        tech.name = "ce-" .. name .. "-" .. max_level + 1
    else
        tech.max_level = 0
        for x = 1, stage_level do
            tech.max_level = tech.max_level + stage.stages_levels[x]
        end
        tech.name = "ce-" .. name .. "-" .. max_level + 1
    end

    local prerequisites = {}


    if stage_level > 1 then
        table.insert(prerequisites, "ce-" .. name .. "-" .. max_level - stage.stages_levels[stage_level - 1] + 1)
        tech.upgrade = true
    else
        if stage.prerequisites then
            for a, b in pairs(stage.prerequisites) do
                local tech = data.raw["technology"][b]
                if tech ~= false then
                    table.insert(prerequisites, b)
                end
            end
        end
        for a, b in pairs(packs) do
            local tech = data.raw["technology"][b[1]]
            if b[1] ~= name and tech.enabled ~= false then
                table.insert(prerequisites, b[1])
            end
        end
    end


    if stage.icon then
        tech.icon = stage.icon
        tech.icon_size = stage.icon_size
    elseif Icons[name] and (stage.recipe_icon == nil or stage.single_recipe) and Icons[name].icons then
        tech.icons = Icons[name].icons
    elseif Icons[name] and (stage.recipe_icon == nil or stage.single_recipe) and Icons[name].icon then
        tech.icon = Icons[name].icon
        tech.icon_size = Icons[name].icon_size
    elseif stage.icons then
        tech.icons = stage.icons
    elseif stage.fluid then
        tech.icon = "__base__/graphics/icons/fluid/" .. name .. ".png"
    else
        tech.icon = "__base__/graphics/icons/" .. name .. ".png"
    end


    local cond = false
    local name_tech = ""
    if stage_level == 1 and not stage.ignore_auto_prerequisite then
        for a, b in pairs(CE_research) do
            if not b.enabled == false then
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
    end


    if cond and name_tech ~= "" and stage_level == 1 then
        table.insert(prerequisites, name_tech)
        table.insert(prerequisites, stage.prerequisites)
    end
    local unit = {}
    unit.count_formula = tostring(stage.stages_costs[stage_level]) ..
        " * " .. tostring(stage.stages_cost_multipliers[stage_level]) .. " * l"
    unit.ingredients = packs
    unit.time = stage.stages_times[stage_level]
    tech.unit = unit
    tech.prerequisites = prerequisites

    data:extend({ tech })
end

function Add_items()
    for i, v in pairs(Recipes) do
        if not v.never_unlock and v.name then
            for x = 1, v.stages do
                Add_research(i, v, x)
            end
        else
            log("ignoring recipe: " .. i .. " because it's never unlocked")
        end
    end
end

local local_recipes = {}
CE_research = {}
Icons = {}

for a, b in pairs(Recipes) do
    if not b.recipes then
        local_recipes[a] = a
    else
        for c, d in pairs(b.recipes) do
            local_recipes[d] = a
        end
    end
    Recipes[a].never_unlock = true
end

for name, research in pairs(data.raw.technology) do
    if research.effects then
        for a, b in pairs(research.effects) do
            if b.type == "unlock-recipe" then
                if local_recipes[b.recipe] then
                    local recipe_name = local_recipes[b.recipe]
                    Recipes[recipe_name].never_unlock = false
                    CE_research[name] = { research }

                    if Recipes[recipe_name].single_recipe and recipe_name == b.recipe or Recipes[recipe_name].recipes == nil then
                        Icons[recipe_name] = research
                    end

                    if settings.startup["ce-bypass-vanilla-limit"].value then
                        data.raw.recipe[b.recipe].maximum_productivity = 4294967296
                    end

                    if not research.icon and not research.icons then
                        table.insert(Icons[recipe_name], data.raw.recipe[recipe_name].icon)
                        table.insert(Icons[recipe_name], data.raw.recipe[recipe_name].icon_size)
                        table.insert(Icons[recipe_name], data.raw.recipe[recipe_name].icons)
                    end
                end
            end
        end
    end
end

for i, v in pairs(Recipes) do
    if data.raw.recipe[i] and data.raw.recipe[i].enabled == nil then
        if settings.startup["ce-bypass-vanilla-limit"].value then
            data.raw.recipe[i].maximum_productivity = 4294967296
        end
        Recipes[i].never_unlock = false
    end
    if v.prerequisites then
        Recipes[i].never_unlock = false
    end
end
