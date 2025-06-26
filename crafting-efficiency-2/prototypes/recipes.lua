require("prototypes.helper")

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
        prerequisites = table.merge(prerequisites, stage.prerequisites) or {}
    end
    for a, b in pairs(packs) do
            local tech = data.raw["technology"][b[1]]
            if tech and b[1] ~= name and tech.enabled ~= false then
                table.insert(prerequisites, b[1])
        end
    end

    if stage.icon then
        tech.icon = stage.icon
        tech.icon_size = stage.icon_size
    elseif stage.icons then
        tech.icons = stage.icons
    elseif stage.fluid then
        tech.icon = "__base__/graphics/icons/fluid/" .. name .. ".png"
    else
        tech.icon = "__base__/graphics/icons/" .. name .. ".png"
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
        if not v.enable_by and not settings.startup["ce-common"].value then
            log("Ignoring recipe: " .. i .. "  because disabled by settings")
        elseif settings.startup[v.enable_by] and not settings.startup[v.enable_by].value then
            log("Ignoring recipe: " .. i .. "  because disabled by settings")
        elseif not v.never_unlock and v.name then
            for x = 1, v.stages do
                Add_research(i, v, x)
            end
        else
            log("Ignoring recipe: " .. i .. "  because it's never unlocked")
        end
    end
end

for name, content in pairs(Recipes) do
    ---@type data.TechnologyPrototype|string|nil|boolean
    local prereq_tech
    ---@type table|nil
    local prereq_techs

    Recipes[name].never_unlock = true

    -- Checking for prerequisites
    if not content.prerequisites and not content.ignore_auto_prerequisite and content.recipes then
        -- when initial start with one recipe use that one recipe
        local temp_name = name

        if content.recipes then
            temp_name = content.recipes[1]
        end

        prereq_tech = Prerequisites(temp_name)
    else
        if content.prerequisites then
            for index, name in pairs(content.prerequisites) do
                tech = data.raw.technology[name]
                if tech and tech.enabled ~= false then
                    if not prereq_techs then prereq_techs = {} end --initialize prereq_techs
                    --enabling recipes if there is at least one prerequisites enabled
                    table.insert(prereq_techs, tech.name)
                end
            end
        end
    end

    -- if there recipe can be enabled continue
    if prereq_tech or prereq_techs then
        Recipes[name].never_unlock = false

        --set-up prerequisites
        if type(prereq_tech) == "table" then
            if not Recipes[name].prerequisites then
                Recipes[name].prerequisites = {}
            end
            table.insert(Recipes[name].prerequisites, prereq_tech.name)
        end


        --grabbing technology icon
        if not content.icon then
            if prereq_techs or not (type(prereq_tech) == "table" and (prereq_tech.icon or prereq_tech.icons)) or Recipes[name].recipe_icon then
                if data.raw.recipe[name] and (data.raw.recipe[name].icon or data.raw.recipe[name].icons) then
                    Recipes[name].icon = data.raw.recipe[name].icon
                    Recipes[name].icon_size = data.raw.recipe[name].icon_size
                    if data.raw.recipe[name].icons then
                        Recipes[name].icons = {}
                        Recipes[name].icons = table.merge(Recipes[name].icons, data.raw.recipe[name].icons)
                    end
                end
            elseif type(prereq_tech) == "table" then
                Recipes[name].icon = prereq_tech.icon
                Recipes[name].icon_size = prereq_tech.icon_size
                if prereq_tech.icons then
                    Recipes[name].icons = {}
                    Recipes[name].icons = table.merge(Recipes[name].icons, prereq_tech.icons)
                end
            else
                Recipes[name].icon = data.raw.recipe[name].icon
                Recipes[name].icon_size = data.raw.recipe[name].icon_size
                if data.raw.recipe[name].icons then
                    Recipes[name].icons = {}
                    Recipes[name].icons = table.merge(Recipes[name].icons, data.raw.recipe[name].icons)
                end
            end
        end
        
        -- bypass vanilla productivity limit or 300%
        if settings.startup["ce-bypass-vanilla-limit"].value then
            if content.recipes then
                for index, name in pairs(content.recipes) do
                    data.raw.recipe[name].maximum_productivity = 4294967295
                end
            else
                data.raw.recipe[name].maximum_productivity = 4294967295
            end
        end
    end
end
