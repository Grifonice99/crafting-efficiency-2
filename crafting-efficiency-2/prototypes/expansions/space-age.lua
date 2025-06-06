if mods["space-age"] then
    Space_Packs = {
        {  Packs[3][1], Packs[3][2], Packs[3][3], { "agricultural-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "metallurgic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "electromagnetic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "agricultural-science-pack", 1 }, {"electromagnetic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "metallurgic-science-pack", 1 }, {"electromagnetic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "agricultural-science-pack", 1 }, {"metallurgic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "agricultural-science-pack", 1 }, {"electromagnetic-science-pack", 1}, { "metallurgic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "agricultural-science-pack", 1 }, {"electromagnetic-science-pack", 1}, { "metallurgic-science-pack", 1}, { "cryogenic-science-pack", 1 } },
        { Packs[3][1], Packs[3][2], Packs[3][3],{  "agricultural-science-pack", 1 }, {"electromagnetic-science-pack", 1}, { "metallurgic-science-pack", 1}, { "cryogenic-science-pack", 1}, { "promethium-science-pack", 1} },
    }


    Space_age_recipes = {
        ["Nutrients"] = {
            name = "Nutrients productivity",
            stages = 4,
            stages_packs = { Space_Packs[1], Space_Packs[7], Space_Packs[8], Space_Packs[9] },
            recipes = {
            "nutrients-from-spoilage",
            "nutrients-from-biter-egg",
            "nutrients-from-fish",
            "nutrients-from-bioflux",
            "nutrients-from-yumako-mash"
            },
            icon = "__space-age__/graphics/icons/nutrients.png",
            recipe_icon = true,
            prerequisites = {"agriculture"},
            stages_levels = { 6, 9, 14 },
            stages_costs = {  2000, 2000, 2000, 2400 },
            stages_cost_multipliers = {  1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90 }
        },
        ["agricultural-science-pack"] = {
            name = "Agricultural science pack productivity",
            stages = 4,
            stages_packs = { Space_Packs[1], Space_Packs[7], Space_Packs[8], Space_Packs[9] },
            stages_levels = { 6, 9, 14 },
            stages_costs = {  2000, 2000, 2000, 2400 },
            stages_cost_multipliers = {  1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90 }
        },
        ["metallurgic-science-pack"] = {
            name = "Metallurgic science pack productivity",
            stages = 4,
            stages_packs = { Space_Packs[2], Space_Packs[7], Space_Packs[8], Space_Packs[9] },
            stages_levels = { 6, 9, 14 },
            stages_costs = {  2000, 2000, 2000, 2400 },
            stages_cost_multipliers = {  1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90 }
        },
        ["electromagnetic-science-pack"] = {
            name = "Electromagnetic science pack productivity",
            stages = 4,
            stages_packs = { Space_Packs[3], Space_Packs[7], Space_Packs[8], Space_Packs[9] },
            stages_levels = { 6, 9, 14 },
            stages_costs = {  2000, 2000, 2000, 2400 },
            stages_cost_multipliers = {  1, 1, 1, 1.5 },
            stages_productivities = { 10, 10, 10, 10 },
            stages_times = { 90, 90, 90, 90 }
        },
        ["cryogenic-science-pack"] = {
            name = "Cryogenic science pack productivity",
            stages = 2,
            stages_packs = { Space_Packs[8], Space_Packs[9] },
            stages_levels = { 14 },
            stages_costs = {  2000, 2400 },
            stages_cost_multipliers = { 1, 1.5 },
            stages_productivities = { 10, 10 },
            stages_times = { 90, 90}
        },
        ["promethium-science-pack"] = {
            name = "Promethium science pack productivity",
            stages = 2,
            stages_packs = { Space_Packs[9], Space_Packs[9] },
            stages_levels = { 14 },
            stages_costs = {  2000, 2400 },
            stages_cost_multipliers = { 1, 1.5 },
            stages_productivities = { 10, 10 },
            stages_times = { 90, 90}
        },
    }
    CE_Insert_recipe("solid-fuel", "solid-fuel-from-ammonia")
    CE_Insert_recipe("steel-plate", "casting-steel")
    CE_Insert_recipe("iron-gear-wheel", "casting-iron-gear-wheel")
    CE_Insert_recipe("iron-plate", "casting-iron")
    CE_Insert_recipe("copper-plate", "casting-copper")
    CE_Insert_recipe("copper-cable", "casting-copper-cable", true)
    CE_Insert_recipe("plastic-bar", "bioplastic")
    CE_Insert_recipe("rocket-fuel", "ammonia-rocket-fuel")
    CE_Insert_recipe("rocket-fuel", "rocket-fuel-from-jelly")
    CE_Insert_recipe("sulfur", "biosulfur")
    CE_Insert_recipe("low-density-structure", "casting-low-density-structure")
    CE_Insert_recipe("concretes", "concrete-from-molten-iron")


    for a, b in pairs(Space_age_recipes) do
        Recipes[a] = b
    end
end
