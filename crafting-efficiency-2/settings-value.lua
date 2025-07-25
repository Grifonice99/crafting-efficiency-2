require("prototypes.helper")
Packs = {
    { { "automation-science-pack", 1 } },
    { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
    { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } },
    { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 } },
    { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 } },
    { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 }, { "space-science-pack", 1 } },
}

Recipes = {
    ["copper-cable"] = {
        name = "Copper cable productivity",
        enable_by = "ce-intermediate",
        recipe_icon = true,
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["copper-plate"] = {
        name = "Copper plate productivity",
        enable_by = "ce-intermediate",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 20, 20, 20, 20, 20, 20 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["iron-plate"] = {
        name = "Iron plate productivity",
        enable_by = "ce-intermediate",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 20, 20, 20, 20, 20, 20 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["stone-brick"] = {
        name = "Stone brick productivity",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 20, 20, 20, 20, 20, 20 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["electronic-circuit"] = {
        name = "Electronic circuit productivity",
        enable_by = "ce-intermediate",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["iron-gear-wheel"] = {
        name = "Iron gear wheel productivity",
        enable_by = "ce-intermediate",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["iron-stick"] = {
        name = "Iron stick productivity",
        recipe_icon = true,
        enable_by = "ce-intermediate",
        stages = 6,
        prerequisites = {"electric-energy-distribution-1"},
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["steel-plate"] = {
        name = "Steel plate productivity",
        enable_by = "ce-intermediate",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["engine-unit"] = {
        name = "Engine unit productivity",
        enable_by = "ce-intermediate",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["battery"] = {
        name = "Battery productivity",
        enable_by = "ce-intermediate",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["concretes"] = {
        name = "Concrete productivity",
        stages = 5,
        recipes = {
            "concrete",
            "hazard-concrete",
            "refined-concrete",
            "refined-hazard-concrete",
        },
        prerequisites = {"concrete"},
        icon = "__base__/graphics/technology/concrete.png",
        icon_size = 256,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["advanced-circuit"] = {
        name = "Advanced circuit productivity",
        enable_by = "ce-intermediate",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["plastic-bar"] = {
        name = "Plastic bar productivity",
        enable_by = "ce-intermediate",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["sulfur"] = {
        name = "Sulfur processing productivity",
        enable_by = "ce-intermediate",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1200, 1200, 1200, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["basic-oil-processing"] = {
        name = "Basic oil processing productivity",
        enable_by = "ce-intermediate",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["solid-fuel"] = {
        name = "Solid fuel productivity",
        enable_by = "ce-intermediate",
        recipes = { "solid-fuel-from-petroleum-gas",
            "solid-fuel-from-light-oil",
            "solid-fuel-from-heavy-oil"
        },
        recipe_icon = true,
        prerequisites = {"advanced-oil-processing", "oil-processing"},
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["electric-furnace"] = {
        name = "Electric Furnace productivity",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["processing-unit"] = {
        name = "Processing unit productivity",
        enable_by = "ce-intermediate",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["advanced-oil-processing"] = {
        name = "Advanced oil processing productivity",
        enable_by = "ce-intermediate",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["electric-engine-unit"] = {
        name = "Electric engine unit productivity",
        enable_by = "ce-intermediate",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["flying-robot-frame"] = {
        name = "Flying robot frame productivity",
        enable_by = "ce-intermediate",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["low-density-structure"] = {
        name = "Low density structure productivity",
        enable_by = "ce-intermediate",
        stages = 2,
        stages_packs = { Packs[5], Packs[6] },
        stages_levels = { 4, 5 },
        stages_costs = { 1500, 2000 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 45, 45 }
    },
    ["rocket-fuel"] = {
        name = "Rocket fuel productivity",
        enable_by = "ce-intermediate",
        stages = 2,
        stages_packs = { Packs[5], Packs[6] },
        stages_levels = { 4, 5 },
        stages_costs = { 1500, 2000 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 45, 45 }
    },
    ["uranium-processing"] = {
        name = "Uranium processing productivity",
        enable_by = "ce-intermediate",
        stages = 3,
        stages_packs = { Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 4, 5 },
        stages_costs = { 1500, 1500, 2000 },
        stages_cost_multipliers = { 4, 4, 8 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 45, 45, 45 }
    },
    ["coal-liquefaction"] = {
        name = "Coal liquefaction productivity",
        enable_by = "ce-intermediate",
        stages = 3,
        stages_packs = { Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 4, 5 },
        stages_costs = { 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 45, 45, 45 }
    },
    ["lubricant"] = {
        name = "Lubricant productivity",
        enable_by = "ce-intermediate",
        stages = 3,
        stages_packs = { Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 4, 5 },
        stages_costs = { 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 45, 45, 45 }
    },
    ["automation-science-pack"] = {
        name = "Automation science pack productivity",
        enable_by = "ce-science_pack",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 6, 6, 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90, 90, 90 }
    },
    ["logistic-science-pack"] = {
        name = "Logistic science pack productivity",
        enable_by = "ce-science_pack",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 6, 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90, 90 }
    },
    ["chemical-science-pack"] = {
        name = "Chemical science pack productivity",
        enable_by = "ce-science_pack",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90 }
    },
    ["military-science-pack"] = {
        name = "Military science pack productivity",
        enable_by = "ce-science_pack",
        stages = 4,
        stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90 }
    },
    ["production-science-pack"] = {
        name = "Production science pack productivity",
        enable_by = "ce-science_pack",
        stages = 3,
        stages_packs = { Packs[4], Packs[5], Packs[6] },
        stages_levels = { 9, 14 },
        stages_costs = { 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 90, 90, 90 }
    },
    ["utility-science-pack"] = {
        name = "Utility science pack productivity",
        enable_by = "ce-science_pack",
        stages = 2,
        stages_packs = { Packs[5], Packs[6] },
        stages_levels = { 14 },
        stages_costs = { 2000, 2400 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 90, 90 }
    },
    ["grenade"] = {
        name = "Grenade productivity",
        enable_by = "ce-military",
        recipe_icon = true,
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["firearm-magazine"] = {
        name = "Magazine productivity",
        enable_by = "ce-military",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["piercing-rounds-magazine"] = {
        name = "Piercing magazine productivity",
        enable_by = "ce-military",
        recipe_icon = true,
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["uranium-rounds-magazine"] = {
        name = "Uranium magazine productivity",
        enable_by = "ce-military",
        stages = 2,
        stages_packs = { Packs[5], Packs[6] },
        stages_levels = { 10,15 },
        stages_costs = { 1000, 1200 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 45, 45 }
    }
}

---@alias Recipes Recipes


function CE_Insert_Recipe(name, recipe)
    if data.raw.recipe[recipe] then
        if Recipes[name].recipes == nil then
            Recipes[name].recipe_icon = true
            Recipes[name].recipes = {name, recipe}
        else
            table.insert(Recipes[name].recipes, recipe)
        end
    else
        log(name .. " it's an invalid recipe")
    end
end


function CE_Add_Recipe(data, name)
    if data.name and data.stages and data.stages_packs and data.stages_levels and data.stages_costs and data.stages_cost_multipliers and data.stages_productivities and data.stages_times then
    else
        log("Missing values")
        return
    end
    for x = 1, data.stages do
        Add_research(name, data, x)
    end
end
