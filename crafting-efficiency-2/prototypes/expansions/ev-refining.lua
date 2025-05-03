if mods["ev-refining"] then
	Packs = {
		{ { "automation-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 }, { "space-science-pack", 1 } },
	}
	
	Recipes = {
		["gravel"] = {
			name = "Gravel productivity",
			recipes = { "stone-to-gravel"
			},
			recipe_icon = true,
			prerequisites = {base-ore-processing},
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15, 15, 15 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["coal-dust"] = {
			name = "Coal dust productivity",
			recipes = { "coal-dust"
			},
			recipe_icon = true,
			prerequisites = {base-ore-processing},
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15, 15, 15 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["enriched-coal"] = {
			name = "Enriched coal productivity",
			recipes = { "coal-dust-enrichment",
				"coal-clump-enrichment",
				"coal-chunk-enrichment"
			},
			recipe_icon = true,
			prerequisites = {base-ore-processing},
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15, 15, 15 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["steel-dust"] = {
			name = "Steel dust productivity",
			recipes = { "advanced-steel-processing"
			},
			recipe_icon = true,
			prerequisites = {advanced-material-processing},
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15, 15, 15 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["iron-dust"] = {
			name = "Iron dust productivity",
			recipes = { "iron-ore-alternative-smelting",
			"iron-ore-crushing",
			"iron-lump-processing"
			},
			recipe_icon = true,
			prerequisites = {advanced-material-processing},
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15, 15, 15 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["copper-dust"] = {
			name = "Copper dust productivity",
			recipes = { "copper-ore-alternative-smelting",
			"copper-ore-crushing",
			"copper-lump-processing"
			},
			recipe_icon = true,
			prerequisites = {advanced-material-processing},
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15, 15, 15 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["iron-clump"] = {
			name = "Iron clump productivity",
			recipes = { "iron-ore-enriching",
			"iron-chunk-processing"
			},
			recipe_icon = true,
			prerequisites = {advanced-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		},
		["copper-clump"] = {
			name = "Copper clump productivity",
			recipes = { "copper-ore-enriching",
			"copper-chunk-processing"
			},
			recipe_icon = true,
			prerequisites = {advanced-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		},
		["iron-chunk"] = {
			name = "Iron chunk productivity",
			recipes = { "iron-ore-purifying"
			},
			recipe_icon = true,
			prerequisites = {advanced-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		},
		["copper-chunk"] = {
			name = "Copper chunk productivity",
			recipes = { "copper-ore-purifying"
			},
			recipe_icon = true,
			prerequisites = {elite-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		},
		["coal-clump"] = {
			name = "Coal clump productivity",
			recipes = { "coal-clump",
				"advanced-coal-enriching"
			},
			recipe_icon = true,
			prerequisites = {advanced-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		},
		["coal-chunk"] = {
			name = "Coal chunk productivity",
			recipes = { "coal-chunk"
			},
			recipe_icon = true,
			prerequisites = {elite-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		},
		["fine-sand"] = {
			name = "Fine sand productivity",
			recipes = { "gravel-to-sand"
			},
			recipe_icon = true,
			prerequisites = {advanced-ore-processing},
			stages = 3,
			stages_packs = { Packs[6], Packs[6], Packs[6] },
			stages_levels = { 5, 5, 5 },
			stages_costs = { 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1.5 },
			stages_productivities = { 15, 15, 15 },
			stages_times = { 45, 45, 45 }
		}
	}
	
    CE_Insert_recipe("stone-brick", "gravel-to-brick")
    CE_Insert_recipe("stone-brick", "sand-to-brick")
    CE_Insert_recipe("copper-plate", "copper-dust-smelting")
    CE_Insert_recipe("iron-plate", "iron-dust-smelting")
    CE_Insert_recipe("steel-plate", "steel-dust-smelting")
    CE_Insert_recipe("plastic-bar", "plastics-from-enriched-coal")
    CE_Insert_recipe("rocket-fuel", "rocket-fuel-from-coal-chunk")
    CE_Insert_recipe("grenade", "grenades-from-enriched-coal")
    CE_Insert_recipe("concrete", "concrete-finishing")
    
end