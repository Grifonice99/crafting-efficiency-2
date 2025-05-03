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
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["steel-plate"] = {
        name = "Steel plate productivity",
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
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["concrete"] = {
        name = "Concrete productivity",
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["advanced-circuit"] = {
        name = "Advanced circuit productivity",
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
        stages = 5,
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["solid-fuel"] = {
        name = "Solid fuel efficiency",
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
        stages = 2,
        stages_packs = { Packs[5], Packs[6] },
        stages_levels = { 14 },
        stages_costs = { 2000, 2400 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 90, 90 }
    },
    ["space-science-pack"] = {
        name = "Space science pack productivity",
        stages = 2,
        stages_packs = { Packs[6], Packs[6] },
        stages_levels = { 14 },
        stages_costs = { 2000, 2400 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 90, 90 }
    },
    ["grenade"] = {
        name = "Grenade productivity",
        recipes = {"grenade"},
        --prerequisites = {"military-2"},
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
        recipes = {"firearm-magazine"},
        --prerequisites = {"military"},
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
        recipes = {"piercing-rounds-magazine"},
        stages = 5,
        --prerequisites = {"military-2"},
        stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["uranium-rounds-magazine"] = {
        name = "Uranium magazine productivity",
        recipes = {"uranium-rounds-magazine"},
        --prerequisites = {"uranium-ammo"},
        stages = 2,
        stages_packs = { Packs[5], Packs[6] },
        stages_levels = { 10,15 },
        stages_costs = { 1000, 1200 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 45, 45 }
    }
}


function CE_Insert_recipe(name, recipe, multi) 
    if Recipes[name].recipes == nil then
        Recipes[name].single_recipe = not multi
        Recipes[name].recipes = {name, recipe}
    else
        table.insert(Recipes[name].recipes, recipe)
    end
    Recipes[name].recipe_icon = true
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
