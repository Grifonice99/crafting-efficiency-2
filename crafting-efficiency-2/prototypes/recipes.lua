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
    local result_count1 = {}
    local result_count2 = {}
    local result_count1_2 = {}
    local result_count2_2 = {}
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
        result_count1 = { CE_recipes[name].base.result_count }
    else
        for a, b in pairs(CE_recipes[name].base.results) do
            if b.name then
                table.insert(results, b.name)
                if b.amount_min then
                    table.insert(result_count1, b.amount_min)
                    table.insert(result_count2, b.amount_max)
                else
                    table.insert(result_count1, b.amount)
                end
            else
                if #b > 2 and math.floor(#b / 2) == #b / 2 then
                    for i = 0, #b, 2 do
                        table.insert(results, b[i - 1])
                        table.insert(result_count1, b[i])
                    end
                else
                    table.insert(result, b[1])
                    table.insert(result_count1, b[2])
                end
            end
        end
    end

    if Recipes[name].crafting.efficiency then
        efficiency = Recipes[name].crafting.efficiency / 100
    else
        efficiency = 0.10
    end

    time = CE_recipes[name].base.time
    multiplier_result = Cost_multiplier(materials, time, result_count1, 1 + (efficiency * count), result_count2)
    materials = multiplier_result[1]
    time = multiplier_result[2]
    
    result_count1_2 = multiplier_result[3]
    result_count2_2 = multiplier_result[4]

    local conf = {}
    conf.normal = {}
    conf.expensive = {}
    conf.normal.ingredients = {}
    conf.expensive.ingredients = {}
    conf.result_count = {}
    conf.results = {}
    conf.result = {}

    conf.time = time


    for a, b in pairs(CE_recipes[name].base.ingredients) do
        if b.name then
            table.insert(conf.normal.ingredients, { type = b.type, name = b.name, amount = b.amount })
            table.insert(conf.expensive.ingredients, { type = b.type, name = b.name, amount = b.amount })
        else
            for int = 2, #b, 2 do
                table.insert(conf.normal.ingredients, { b[int - 1], b[int] })
                table.insert(conf.expensive.ingredients, { b[int - 1], b[int] })
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
                elseif b.amount_min then
                    table.insert(conf.results,
                        { type = b.type, name = b.name, amount_min = b.amount_min, amount_max = b.amount_max })
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

    for a, b in pairs(CE_recipes[name][tostring(count)].normal.ingredients) do
        if b.type then
            b.amount = materials[a]
        else
            b[2] = materials[a]
        end
    end
    for a, b in pairs(CE_recipes[name][tostring(count)].expensive.ingredients) do
        if b.type then
            b.amount = materials[a] * 2
        else
            b[2] = materials[a] * 2
        end
    end
    if CE_recipes[name].base.results then
        local check = false
        for a, b in pairs(CE_recipes[name].base.results) do
            if b.name then
                check = true
            end
        end
        if check then
            for a, b in pairs(CE_recipes[name][tostring(count)].results) do
                if b.amount then
                    b.amount = result_count1_2[a]
                elseif b.amount_min then
                    b.amount_min = result_count1_2[a]
                    b.amount_max = result_count2_2[a]
                end
            end
        end
    else
        CE_recipes[name][tostring(count)].result_count = result_count1_2[1]
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
        localised_name = { "recipe-name.recipes-efficiency", Recipes[name].name, " (" .. count .. ")" },
        category = CE_recipes[name].base.category,
        order = CE_recipes[name].base.order .. "b-" .. count,
        normal = {
            ingredients = CE_recipes[name][tostring(count)].normal.ingredients,
            energy_required = CE_recipes[name][tostring(count)].time,
            enabled = false,
        },
        expensive = {
            ingredients = CE_recipes[name][tostring(count)].expensive.ingredients,
            energy_required = CE_recipes[name][tostring(count)].time,
            enabled = false,
        },
    }

    if settings.startup["ce-enable-productivity-module"].value then
        for a, b in pairs(data.raw.module) do
            if b.limitation then
                table.insert(b.limitation, "ce-" .. name .. "-" .. count)
            end
        end
    end

    if CE_recipes[name][tostring(count)].result_count then
        recipe.normal.result_count = CE_recipes[name][tostring(count)].result_count
        recipe.expensive.result_count = CE_recipes[name][tostring(count)].result_count
    end

    if #result == 1 then
        recipe.normal.result = result[1]
        recipe.normal.result_count = result_count1_2[1]
        recipe.expensive.result = result[1]
        recipe.expensive.result_count = result_count1_2[1]
    else
        if #result_count1_2 == 1 and not CE_recipes[name][tostring(count)].results[1].name then
            recipe.normal.result = CE_recipes[name][tostring(count)].results[1]
            recipe.normal.result_count = CE_recipes[name][tostring(count)].result_count
            recipe.expensive.result = CE_recipes[name][tostring(count)].results[1]
            recipe.expensive.result_count = CE_recipes[name][tostring(count)].result_count
            
        else
            recipe.normal.results = CE_recipes[name][tostring(count)].results
            recipe.expensive.results = CE_recipes[name][tostring(count)].results
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
    if CE_recipes[name].base.main_product then
        recipe.normal.main_product = CE_recipes[name].base.main_product
        recipe.expensive.main_product = CE_recipes[name].base.main_product
    end

    data:extend({ recipe })
end

local function add_research(name, count)
    local level = Recipes[name].research.level
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
    elseif level >= 5 then
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 },
            { "production-science-pack", 1 }, { "utility-science-pack", 1 } }
        cost_multiplier = 13
    end

    local tech = {
        name = "ce-" .. name .. "-" .. count,
        type = "technology",
        icon_size = 64,
        icon_mipmaps = 4,
        upgrade = false,
        localised_name = { "technology-name.technology-efficiency", Recipes[name].name, " (" .. count .. ")" },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ce-" .. name .. "-" .. count,
            },
        },
    }
    local prerequisites = {}
    if count > 1 then
        table.insert(prerequisites, "ce-" .. name .. "-" .. count - 1)
        tech.upgrade = true
    else
        if CE_recipes[name].base.prerequisites then
            for a, b in pairs(CE_recipes[name].base.prerequisites) do
                table.insert(prerequisites, b)
            end
        end
        if Recipes[name].research.prerequisites then
            for a, b in pairs(Recipes[name].research.prerequisites) do
                table.insert(prerequisites, b)
            end
        end
        for a, b in pairs(ingredients) do
            if b[1] ~= "automation-science-pack" and b[1] ~= name then
                table.insert(prerequisites, b[1])
            end
        end
    end

    if CE_recipes[name].base.icon then
        tech.icon = CE_recipes[name].base.icon
    elseif Recipes[name].icon then
        tech.icon = Recipes[name].icon
    elseif Recipes[name].fluid then
        tech.icon = "__base__/graphics/icons/fluid/" .. name .. ".png"
    else
        tech.icon = "__base__/graphics/icons/" .. name .. ".png"
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

    if cond and name_tech ~= "" and count == 1 then
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
    for i, v in pairs(Recipes) do
        for x = 1, v.max do
            add_recipe(v, i, x)
            add_research(i, x)
        end
    end
end

CE_recipes = {}
CE_research = {}

local recipe_copy = deepcopy(Recipes)

for name, recipe in pairs(data.raw.recipe) do
    local order
    if recipe.order then
        order = recipe.order
    end
    if Recipes[name] then
        recipe_copy[name] = nil
        recipe = deepcopy(recipe)
        if recipe.normal == nil then
            recipe.normal = {}
        end
        
        CE_recipes[name] = {
            base = { 
                order = order,
                ingredients = recipe.ingredients or recipe.normal.ingredients ,
                time = recipe.energy_required or recipe.normal.energy_required or 0.5,
                category = recipe.category or "crafting",
                result_count = recipe.result_count or recipe.normal.result_count or  1,
                icon = recipe.icon,
                icon_size = recipe.icon_size,
                icon_mipmaps = recipe.icon_mipmaps,
                subgroup = recipe.subgroup,
                icons = recipe.icons,
                main_product = recipe.main_product or recipe.normal.main_product,
            },
        }

        if recipe.result or recipe.normal.result then
            CE_recipes[name].base.result = {recipe.result or recipe.normal.result}
        else 
            CE_recipes[name].base.results = recipe.results or recipe.normal.results
        end
    end
end

for a, b in pairs(recipe_copy) do
    log("WARNING: " .. a .. " Recipe not found, removing it.")
    Recipes[a] = nil
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


for name, item in pairs(data.raw.item) do
    if CE_recipes[name] then
        CE_recipes[name].base.order = item.order
    end
end

for name, tool in pairs(data.raw.tool) do
    if CE_recipes[name] then
        CE_recipes[name].base.order = tool.order
    end
end

for name, fluid in pairs(data.raw.fluid) do
    if CE_recipes[name] then
        CE_recipes[name].base.order = fluid.order
    end
end