WIP
```lua
[recipe-id]{ --(Ex: "copper-cable)
    name = string --(the locale name of the technology in game)  
    productivity = number --(Ex: 10 for 10%)
    max = number --(Default to nil, use this to limit the maxinum number of research) --not implemented yet
    recipe_icon = boolean --(set to true to force using the recipe icon, optional)
    fluid = boolean --(set to true to define that the result type are fluids, optional)     
    ignore_auto_prerequisite = boolean --(if sets to true ignore the technology that unlock the recipe, optional)
    
    stages = number --(How many steps of research with differenet science pack) 
    stages_packs = table --{{{"automation-science-pack", 1}}, {{"automation-science-pack", 1}, {"logistics-science-pack", 1}}} (The list of required Sciece pack for every stage and their count)
    stages_levels = table --{2, 2} (The number of research for level, )
    stages_costs = table --{10, 20} (The tech countfor each stage)
    stages_cost_multipliers = table --{1.5, 2} (The tech cost multiplerfor the levels of the stages)
    stages_productivities = table --{10, 15} (The productivity for every stage, not allowed with the key "productivity" declared )    
    stages_times = table --{30, 30} (Time to consume 1 set of science pack for each stage)
}
```

To add a custom productivity you just need to use CE_Add_Recipe
Example:


```lua
data = {
        name = "Copper cable productivity",
        stages = 6,
        stages_packs = Packs,
        stages_levels = { 3, 3, 3, 4, 5 },
        stages_costs = { 1000, 1000, 1000, 1000, 1000, 1200 },
        stages_cost_multipliers = { 1, 1, 1, 1, 1, 1.5 },
        stages_productivities = { 10, 10, 10, 10, 10, 10 },
        stages_times = { 45, 45, 45, 45, 45, 45 }
    }

CE_Add_Recipe(data, name)
```

NOTE: To use custom Icon define icon and icon_size (see https://lua-api.factorio.com/latest/types/IconData.html for more information)