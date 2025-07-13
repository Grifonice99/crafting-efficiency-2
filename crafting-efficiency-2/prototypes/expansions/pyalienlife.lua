if mods["pyalienlife"] then
    Pyalienlife_Recipes = {
        ["py-science-pack-1"] = {
            name = "Py science pack 1 productivity",
            enable_by = "ce-science_pack",
            stages = 6,
            stages_packs = Packs,
            stages_levels = { 6, 6, 6, 9, 14 },
            stages_costs = { 2000, 2000, 2000, 2000, 2000, 2400 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90, 90, 90 }
        },
        ["py-science-pack-2"] = {
            name = "Py science pack 2 productivity",
            enable_by = "ce-science_pack",
            stages = 5,
            stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
            stages_levels = { 6, 6, 9, 14 },
            stages_costs = { 2000, 2000, 2000, 2000, 2400 },
            stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90, 90 }
        },
        ["py-science-pack-3"] = {
            name = "Py science pack 3 productivity",
            enable_by = "ce-science_pack",
            stages = 4,
            stages_packs = { Packs[3], Packs[4], Packs[5], Packs[6] },
            stages_levels = { 6, 9, 14 },
            stages_costs = { 2000, 2000, 2000, 2400 },
            stages_cost_multipliers = { 1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90 }
        },
        ["py-science-pack-4"] = {
            name = "Py science pack 4 productivity",
            enable_by = "ce-science_pack",
            stages = 3,
            stages_packs = { Packs[4], Packs[5], Packs[6] },
            stages_levels = { 9, 14 },
            stages_costs = { 2000, 2000, 2400 },
            stages_cost_multipliers = { 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10 },
            stages_times = { 90, 90, 90 }
        }
    }
    for a, b in pairs(Pyalienlife_Recipes) do
        Recipes[a] = b
    end
end
