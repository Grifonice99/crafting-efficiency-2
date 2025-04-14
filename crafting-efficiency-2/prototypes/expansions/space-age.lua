local function insert_rec(name, recipe) 
    if Recipes[name].recipes == nil then
        Recipes[name].recipes = {name, recipe}
    else
        table.insert(Recipes[name].recipes, recipe)
    end
    Recipes[name].recipe_icon = true
end

if mods["space-age"] then
    Space_age_recipes = {

    }
    insert_rec("solid-fuel", "solid-fuel-from-ammonia")
    insert_rec("steel-plate", "casting-steel")
    insert_rec("iron-gear-wheel", "casting-iron-gear-wheel")
    insert_rec("iron-plate", "casting-iron")
    insert_rec("copper-plate", "casting-copper")
    insert_rec("copper-cable", "casting-copper-cable")
    insert_rec("plastic-bar", "bioplastic")
    insert_rec("rocket-fuel", "ammonia-rocket-fuel")
    insert_rec("rocket-fuel", "rocket-fuel-from-jelly")
    insert_rec("sulfur", "biosulfur")
    insert_rec("low-density-structure", "casting-low-density-structure")
end