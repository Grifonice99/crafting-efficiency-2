if mods["bobplates"] then
    local packs_basic_plates = { Packs[2], Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] }
    local packs_medium_plates = { Packs[4], Packs[5], Packs[6] }
    Bobores_Recipes = {
        ["bob-tin-plate"] = {
            name = "Tin plate productivity",
            icon = "__bobplates__/graphics/icons/plate/tin-plate.png",
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-silver-plate"] = {
            name = "Silver plate productivity",
            icon = "__bobplates__/graphics/icons/plate/silver-plate.png",
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-lead-plates"] = {
            name = "Lead plate productivity",
            icon = "__bobplates__/graphics/icons/plate/lead-plate.png",
            prerequisites = {},
            recipes = {
                "bob-lead-plate",
                "bob-silver-from-lead",
                "bob-lead-plate-2"
            },
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1200, 1200, 1200, 1200, 1200, 1500 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-gold-plate"] = {
            name = "Gold plate productivity",
            icon = "__bobplates__/graphics/icons/plate/gold-plate.png",
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-cobalt-plates"] = {
            name = "Cobalt plate productivity",
            icon = "__bobplates__/graphics/icons/plate/cobalt-plate.png",
            recipes = {
                "bob-cobalt-steel-alloy",
                "bob-cobalt-plate",
            },
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-zinc-plates"] = {
            name = "Zinc plates productivity",
            icon = "__bobplates__/graphics/icons/plate/zinc-plate.png",
            prerequisites = {},
            recipes = {
                "bob-zinc-plate",
                "bob-brass-alloy",
                "bob-gunmetal-alloy"
            },
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }

        },
        ["bob-silicon-plate"] = {
            name = "Silicon plate productivity",
            icon = "__bobplates__/graphics/icons/plate/silicon-plate.png",
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-nickel-plate"] = {
            name = "Nickel plate productivity",
            icon = "__bobplates__/graphics/icons/plate/nickel-plate.png",
            stages = 6,
            stages_packs = Packs,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-aluminium-plate"] = {
            name = "Aluminium plate productivity",
            icon = "__bobplates__/graphics/icons/plate/aluminium-plate.png",
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }

        },
        ["bob-titanium-plate"] = {
            name = "Titanium plate productivity",
            icon = "__bobplates__/graphics/icons/plate/titanium-plate.png",
            stages = 3,
            stages_packs = packs_medium_plates,
            stages_levels = { 6, 7, 8 },
            stages_costs = { 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10 },
            stages_times = { 45, 45, 45 }

        },
        ["bob-bronze-alloy"] = {
            name = "Bronze plate productivity",
            icon = "__bobplates__/graphics/icons/plate/bronze-plate.png",
            stages = 6,
            stages_packs = Packs,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-copper-tungsten-alloys"] = {
            name = "Titanium plate productivity",
            icon = "__bobplates__/graphics/icons/plate/copper-tungsten-alloy.png",
            recipes = {
                "bob-copper-tungsten-alloy",
                "bob-tungsten-carbide",
                "bob-tungsten-carbide-2"
            },
            stages = 3,
            stages_packs = packs_medium_plates,
            stages_levels = { 6, 7, 8 },
            stages_costs = { 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10 },
            stages_times = { 45, 45, 45 }
        },
        ["bob-invar-alloy"] = {
            name = "Invar plate productivity",
            icon = "__bobplates__/graphics/icons/plate/invar-plate.png",
            stages = 6,
            stages_packs = packs_basic_plates,
            stages_levels = { 3, 3, 3, 4, 5 },
            stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 45, 45, 45, 45, 45, 45 }
        },
        ["bob-nitinol-alloy"] = {
            name = "Titanium plate productivity",
            icon = "__bobplates__/graphics/icons/plate/titanium-plate.png",
            stages = 3,
            stages_packs = packs_medium_plates,
            stages_levels = { 6, 7, 8 },
            stages_costs = { 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10 },
            stages_times = { 45, 45, 45 }
        },
        ["bob-thorium-processing"] =
        {
            name = "Thorium Processing productivity",
            icon = "__bobplates__/graphics/technology/thorium-processing.png",
            stages = 3,
            stages_packs = packs_medium_plates,
            stages_levels = { 6, 7, 8 },
            stages_costs = { 1000, 1000, 1200 },
            stages_cost_multipliers = { 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10 },
            stages_times = { 45, 45, 45 }
        }

    }
    for a, b in pairs(Bobores_Recipes) do
        Recipes[a] = b
    end
end
