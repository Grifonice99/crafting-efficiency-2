require("functions")

function table.removekey(table, key)
    local element = table[key]
    table[key] = nil
    return element
end

local function add_recipe(recipe, name, count)
    local multiplier_result = {}
    local result = {}
    local results = {}
    local time = 0
    local result_count = {}
    local result_count_2 = {}
    local efficiency = 0


    local materials = {}

    for a, b in pairs(CE_recipes[name].base.ingredients) do
        if b.name then
            table.insert(materials, b.amount)
        else
            table.insert(materials, b[2])
        end
    end

    if CE_recipes[name].base.result then
        table.insert(result, CE_recipes[name].base.result[1])
        result_count = { CE_recipes[name].base.result_count }
    else
        for a, b in pairs(CE_recipes[name].base.results) do
            if b.name then
                table.insert(results, b.name)
                table.insert(result_count, b.amount)
            else
                if #b > 2 and math.floor(#b / 2) == #b / 2 then
                    for i = 0, #b, 2 do
                        table.insert(results, b[i - 1])
                        table.insert(result_count, b[i])
                    end
                else
                    table.insert(result, b[1])
                    table.insert(result_count, b[2])
                end
            end
        end
    end

    if New_values[name].crafting.efficiency then
        efficiency = New_values[name].crafting.efficiency / 100
    else
        efficiency = 0.05
    end

    time = CE_recipes[name].base.time
    multiplier_result = Cost_multiplier(materials, time, result_count, 1 + (efficiency * count))
    materials = multiplier_result[1]
    time = multiplier_result[2]
    result_count_2 = multiplier_result[3]

    local conf = {}
    conf.ingredients = {}
    conf.result_count = {}
    conf.results = {}
    conf.result = {}
    conf.time = time


    for a, b in pairs(CE_recipes[name].base.ingredients) do
        if b.name then
            table.insert(conf.ingredients, { type = b.type, name = b.name, amount = b.amount })
        else
            for int = 2, #b, 2 do
                table.insert(conf.ingredients, { b[int - 1], b[int] })
            end
        end
    end
    if CE_recipes[name].base.results then
        local results = {}
        for a, b in pairs(CE_recipes[name].base.results) do

            if b.name then
                if b.probability then
                    table.insert(conf.results,
                        { type = b.type, name = b.name, amount = b.amount, probability = b.probability })
                else
                    table.insert(conf.results, { type = b.type, name = b.name, amount = b.amount })
                end
            else
                table.insert(results, b)
            end
        end
        if #results > 0 then
            conf.results = results
        end
    else
        for a, b in pairs(CE_recipes[name].base.result) do
            if b.name then
                table.insert(conf.result, { type = b.type, name = b.name, amount = b.amount })
            else
                table.insert(conf.result, { b })
            end
        end
    end

    CE_recipes[name][tostring(count)] = conf

    for a, b in pairs(CE_recipes[name][tostring(count)].ingredients) do
        if b.type then
            b.amount = materials[a]
        else
            b[2] = materials[a]
        end
    end
    if CE_recipes[name].base.results then
        if CE_recipes[name].base.results[1].amount then
            for a, b in pairs(CE_recipes[name][tostring(count)].results) do
                if b.name then
                    b.amount = result_count_2[a]
                end
            end
        end
    else
        CE_recipes[name][tostring(count)].result_count = result_count_2[1]
    end
    if type(CE_recipes[name][tostring(count)].result_count) == "table" then
        table.removekey(CE_recipes[name][tostring(count)], "result_count")
    end
    if #CE_recipes[name][tostring(count)].result == 0 then
        table.removekey(CE_recipes[name][tostring(count)], "result")
    end

    local recipe = {
        type = "recipe",
        name = "ce-" .. name .. "-" .. count,
        localised_name = { "recipe-name.recipes-effinciency", New_values[name].name, " (" .. count .. ")" },
        category = CE_recipes[name].base.category,
        enabled = false,
        ingredients = CE_recipes[name][tostring(count)].ingredients,
    }
    if CE_recipes[name][tostring(count)].result_count then
        recipe.result_count = CE_recipes[name][tostring(count)].result_count
    end

    if #result == 1 then
        recipe.result = result[1]
        recipe.result_count = result_count_2[1]
    else
        if #result_count_2 == 1 and not CE_recipes[name][tostring(count)].results[1].name then

            recipe.result = CE_recipes[name][tostring(count)].results[1]
            recipe.result_count = CE_recipes[name][tostring(count)].result_count
        else
            recipe.results = CE_recipes[name][tostring(count)].results
        end
    end
    if CE_recipes[name].base.icon then
        recipe.icon = CE_recipes[name].base.icon
        recipe.icon_size = 64
        recipe.icon_mipmaps = 4
    end

    if CE_recipes[name].base.icons then
        recipe.icons = CE_recipes[name].base.icons
    end

    if CE_recipes[name].base.icon_size then
        recipe.icon_size = CE_recipes[name].base.icon_size
    end

    if CE_recipes[name].base.icon_mipmaps then
        recipe.icon_mipmaps = CE_recipes[name].base.icon_mipmaps
    end

    if CE_recipes[name].base.subgroup then
        recipe.subgroup = CE_recipes[name].base.subgroup
    end
    recipe.energy_required = CE_recipes[name][tostring(count)].time


    data:extend({ recipe })
end

local function add_research(name, count)
    local level = New_values[name].research.level
    local count2 = count * 1
    local cost_multiplier = 1
    local cond = true
    if count2 - 5 > 0 and level < 6 then
        repeat
            count2 = count2 - 5
            level = level + 1
            cond = (count2 - 5 > 0 and level < 6)
        until (not cond)
    end
    local ingredients = {}
    if level == 1 then
        ingredients = { { "automation-science-pack", 1 } }
    elseif level == 2 then
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } }
        cost_multiplier = 2
    elseif level == 3 then
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } }
        cost_multiplier = 4
    elseif level == 4 then
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
            { "production-science-pack", 1 } }
        cost_multiplier = 7
    elseif level == 5 then
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
            { "production-science-pack", 1 }, { "utility-science-pack", 1 } }
        cost_multiplier = 13
    else
        ingredients = { { "automation-science-pack", 1 } }
    end

    local tech = {
        name = "ce-" .. name .. "-" .. count,
        type = "technology",
        icon_size = 64,
        icon_mipmaps = 4,
        upgrade = false,
        localised_name = { "technology-name.technology-efficiency", New_values[name].name, " (" .. count .. ")" },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ce-" .. name .. "-" .. count,
            },
        },
    }
    local prerequisites = {}
    if count > 1 then
        table.insert(prerequisites, "ce-" .. name .. "-" .. count-1)
        tech.upgrade = true
    else
        if CE_recipes[name].base.prerequisites then
            for a, b in pairs(CE_recipes[name].base.prerequisites) do
                table.insert(prerequisites, b)
            end
        end
    end

    if CE_recipes[name].base.icon then
        tech.icon = CE_recipes[name].base.icon
    elseif New_values[name].icon then
        tech.icon = New_values[name].icon
    else
        tech.icon = "__base__/graphics/icons/" .. name .. ".png"
    end

    
    
    for a, b in pairs(ingredients) do
        if b[1] ~= "automation-science-pack" and b[1] ~= name then
            table.insert(prerequisites, b[1])
        end
    end
    local cond = false
    local name_tech = ""
    for a, b in pairs(CE_research) do
        for d, c in pairs(b[1].effects) do
            if c.type == "unlock-recipe" then
                if c.recipe == name then
                    name_tech = a
                    cond = true
                end
            end
        end
    end

    if cond and name_tech ~= "" then
        table.insert(prerequisites, name_tech)
    end
    local unit = {}
    unit.count = (100 * cost_multiplier) * count
    unit.ingredients = ingredients
    unit.time = 30
    tech.unit = unit
    tech.prerequisites = prerequisites
    data:extend({ tech })
end

function Add_items()
    for i, v in pairs(New_values) do


        for x = 1, v.max do
            add_recipe(v, i, x)
            add_research(i, x)
        end
    end
end



CE_recipes = {}
CE_research = {}

for name, recipe in pairs(data.raw.recipe) do
    if data.raw.recipe[name].normal then
        local time = 0
        local result_count = 0
        local ingredients = {}
        local result = {}
        local results = {}
        local category = ""

        if data.raw.recipe[name].normal.result and New_values[name] then

            table.insert(result, data.raw.recipe[name].normal.result)

            if data.raw.recipe[name].normal.energy_required then
                time = data.raw.recipe[name].normal.energy_required
            else
                time = 0.5
            end
            if data.raw.recipe[name].category then
                category = data.raw.recipe[name].category
            else
                category = "crafting"
            end

            if data.raw.recipe[name].normal.result_count then
                result_count = data.raw.recipe[name].normal.result_count
            else
                result_count = 1
            end

            for index, ingr in pairs(data.raw.recipe[name].normal.ingredients) do
                table.insert(ingredients, ingr)
            end
            CE_recipes[name] = { base = { ingredients = ingredients, result = result, time = time,
                category = category, result_count = result_count, icon = data.raw.recipe[name].icon,
                icon_size = data.raw.recipe[name].icon_size, icon_mipmaps = data.raw.recipe[name].icon_mipmaps,
                subgroup = data.raw.recipe[name].subgroup, icons = data.raw.recipe[name].icons } }

        elseif data.raw.recipe[name].normal.results and New_values[name] then

            for index, res in pairs(data.raw.recipe[name].normal.results) do
                table.insert(results, res)
            end

            if data.raw.recipe[name].normal.energy_required then
                time = data.raw.recipe[name].normal.energy_required
            else
                time = 0.5
            end

            if data.raw.recipe[name].category then
                category = data.raw.recipe[name].category
            else
                category = "crafting"
            end

            if data.raw.recipe[name].normal.result_count then
                result_count = data.raw.recipe[name].normal.result_count
            else
                result_count = 1
            end

            for index, ingr in pairs(data.raw.recipe[name].normal.ingredients) do
                table.insert(ingredients, ingr)
            end
            CE_recipes[name] = { base = { ingredients = ingredients, results = results, time = time,
                category = category, result_count = result_count, icon = data.raw.recipe[name].icon,
                icon_size = data.raw.recipe[name].icon_size, icon_mipmaps = data.raw.recipe[name].icon_mipmaps,
                subgroup = data.raw.recipe[name].subgroup, icons = data.raw.recipe[name].icons } }

        end
    else
        local result_count = 0
        local time = 0
        local ingredients = {}
        local result = {}
        local results = {}
        local category = ""

        if data.raw.recipe[name].result and New_values[name] then

            table.insert(result, data.raw.recipe[name].result)

            if data.raw.recipe[name].energy_required then
                time = data.raw.recipe[name].energy_required
            else
                time = 0.5
            end
            if data.raw.recipe[name].category then

                category = data.raw.recipe[name].category
            else
                category = "crafting"
            end

            if data.raw.recipe[name].result_count then
                result_count = data.raw.recipe[name].result_count
            else
                result_count = 1
            end

            for index, ingr in pairs(data.raw.recipe[name].ingredients) do
                table.insert(ingredients, ingr)
            end

            CE_recipes[name] = { base = { ingredients = ingredients, result = result, time = time,
                category = category, result_count = result_count, icon = data.raw.recipe[name].icon,
                icon_size = data.raw.recipe[name].icon_size, icon_mipmaps = data.raw.recipe[name].icon_mipmaps,
                subgroup = data.raw.recipe[name].subgroup, icons = data.raw.recipe[name].icons } }

        elseif data.raw.recipe[name].results and New_values[name] then

            for index, res in pairs(data.raw.recipe[name].results) do
                table.insert(results, res)
            end

            if data.raw.recipe[name].energy_required then
                time = data.raw.recipe[name].energy_required
            else
                time = 0.5
            end


            if data.raw.recipe[name].category then
                category = data.raw.recipe[name].category
            else
                category = "crafting"
            end
            if data.raw.recipe[name].result_count then
                result_count = data.raw.recipe[name].result_count
            else
                result_count = 1
            end

            for index, ingr in pairs(data.raw.recipe[name].ingredients) do
                table.insert(ingredients, ingr)
            end

            CE_recipes[name] = { base = { ingredients = ingredients, results = results, time = time,
                category = category, result_count = result_count, icon = data.raw.recipe[name].icon,
                icon_size = data.raw.recipe[name].icon_size, icon_mipmaps = data.raw.recipe[name].icon_mipmaps,
                subgroup = data.raw.recipe[name].subgroup, icons = data.raw.recipe[name].icons } }
        end
    end
end

for name, research in pairs(data.raw.technology) do
    if research.effects then
        for a, b in pairs(research.effects) do
            if b.type == "unlock-recipe" then
                if CE_recipes[b.recipe] then
                    CE_research[name] = {}
                    table.insert(CE_research[name], research)
                end
            end
        end
    end
end
