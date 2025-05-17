WIP

```lua
{
    [recipe-id] = { --(Ex: "copper-cable)
        name = string --(the locale name of the technology in game)  
        max = number --(Default to nil, use this to limit the maxinum number of research) --not implemented yet
        recipe_icon = boolean --(set to true to force using the recipe icon, optional)
        fluid = boolean --(set to true to define that the result type are fluids, optional)     
        ignore_auto_prerequisite = boolean --(if sets to true ignore the technology that unlock the recipe, optional)
        icon = string -- optional, icon path to use custom icon in research 
        
        stages = number --(How many steps of research with differenet science pack) 
        stages_packs = table->table->{string, number} -- Each sub-table for each stage contains the respective science-pack with their amount 
        stages_levels = table->{number, ...}  --The numbers of level for each stage
        stages_costs = table->{number, ...} --The science-pack cost for each stage of the first level  
        stages_cost_multipliers = table->{number, ...} --The science-pack cost multiplier for each levels ion stages 
        stages_productivities = table->{number, ...} -- The productivity of each stage in %    
        stages_times = table->{number, ...} --the time taken to consume one set of science-pack of each stage
    },
}
```

Example:


```lua
name = "copper-cable"
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
