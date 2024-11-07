local packs = {
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
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["copper-plate"] = {
        name = "Copper plate productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 20, 20, 20, 20, 20, 20 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["iron-plate"] = {
        name = "Iron plate productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 20, 20, 20, 20, 20, 20 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["electronic-circuit"] = {
        name = "Electronic circuit productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["iron-gear-wheel"] = {
        name = "Iron gear wheel productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["steel-plate"] = {
        name = "Steel plate productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["engine-unit"] = {
        name = "Engine unit productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    },
    ["battery"] = {
        name = "Battery productivity",
        stages = 5,
        stages_packs = { packs[2], packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["advanced-circuit"] = {
        name = "Advanced circuit productivity",
        stages = 5,
        stages_packs = { packs[2], packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["plastic-bar"] = {
        name = "Plastic bar productivity",
        stages = 5,
        stages_packs = { packs[2], packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["sulfur"] = {
        name = "Sulfur processing productivity",
        stages = 5,
        stages_packs = { packs[2], packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1200, 1200, 1200, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["basic-oil-processing"] = {
        name = "Basic oil processing productivity",
        stages = 5,
        stages_packs = { packs[2], packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45 }
    },
    ["electric-furnace"] = {
        name = "Electric Furnace productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["processing-unit"] = {
        name = "Processing unit productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["advanced-oil-processing"] = {
        name = "Advanced oil processing productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["electric-engine-unit"] = {
        name = "Electric engine unit productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["flying-robot-frame"] = {
        name = "Flying robot frame productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 3, 3, 4, 5 },
        stages_costs = { 1500, 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45 }
    },
    ["low-density-structure"] = {
        name = "Low density structure productivity",
        stages = 2,
        stages_packs = { packs[5], packs[6] },
        stages_levels = { 4, 5 },
        stages_costs = { 1500, 2000 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 45, 45 }
    },
    ["rocket-fuel"] = {
        name = "Rocket fuel productivity",
        stages = 2,
        stages_packs = { packs[5], packs[6] },
        stages_levels = { 4, 5 },
        stages_costs = { 1500, 2000 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 45, 45 }
    },
    ["uranium-processing"] = {
        name = "Uranium processing productivity",
        stages = 3,
        stages_packs = { packs[4], packs[5], packs[6] },
        stages_levels = { 3, 4, 5 },
        stages_costs = { 1500, 1500, 2000 },
        stages_cost_multipliers = { 4, 4, 8 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 45, 45, 45 }
    },
    ["coal-liquefaction"] = {
        name = "Coal liquefaction productivity",
        stages = 3,
        stages_packs = { packs[4], packs[5], packs[6] },
        stages_levels = { 3, 4, 5 },
        stages_costs = { 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 45, 45, 45 }
    },
    ["lubricant"] = {
        name = "Lubricant productivity",
        stages = 3,
        stages_packs = { packs[4], packs[5], packs[6] },
        stages_levels = { 3, 4, 5 },
        stages_costs = { 1500, 1500, 2000 },
        stages_cost_multipliers = { 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 45, 45, 45 }
    },
    ["automation-science-pack"] = {
        name = "Automation science pack productivity",
        stages = 6,
        stages_packs = packs,
        stages_levels = { 6, 6, 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90, 90, 90 }
    },
    ["logistic-science-pack"] = {
        name = "Logistic science pack productivity",
        stages = 5,
        stages_packs = { packs[2], packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 6, 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90, 90 }
    },
    ["chemical-science-pack"] = {
        name = "Chemical science pack productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90 }
    },
    ["military-science-pack"] = {
        name = "Military science pack productivity",
        stages = 4,
        stages_packs = { packs[3], packs[4], packs[5], packs[6] },
        stages_levels = { 6, 9, 14 },
        stages_costs = { 2000, 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10 },
        stages_times = { 90, 90, 90, 90 }
    },
    ["production-science-pack"] = {
        name = "Production science pack productivity",
        stages = 3,
        stages_packs = { packs[4], packs[5], packs[6] },
        stages_levels = { 9, 14 },
        stages_costs = { 2000, 2000, 2400 },
        stages_cost_multipliers = { 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10 },
        stages_times = { 90, 90, 90 }
    },
    ["utility-science-pack"] = {
        name = "Utility science pack productivity",
        stages = 2,
        stages_packs = { packs[5], packs[6] },
        stages_levels = { 14 },
        stages_costs = { 2000, 2400 },
        stages_cost_multipliers = { 1, 1.5 },
        stages_productivities = { 10, 10 },
        stages_times = { 90, 90 }
    }
}


function CE_Add_Recipe(data, name, ignore_warning, no_log)
    if no_log == nil then
        no_log = false
    end
    if data.name == nil or data.max == nil or data.research == nil or data.research.level == nil or
        data.crafting == nil or name == nil then
        log("Missing elements in the table.")
        return
    end

    local item = {
        name = data.name,
        max = data.max,
        old_method = data.old_method,
        crafting = {
            efficiency = data.crafting.efficiency,
        },
        research = {
            level = data.research.level,
        }
    }
    if data.icon then
        item.icon = data.icon
    end
    if data.fluid then
        item.fluid = data.fluid
    end
    --Recipes[name] = item
    if not no_log then
        log("Added " .. name .. " to the table.")
    end
end
