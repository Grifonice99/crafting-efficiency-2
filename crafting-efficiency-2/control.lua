require("settings-value")


local function update_recipes(event)
	local base = event.research.name:gsub("(.*)%-.*$", "%1")
	local identifier = base:sub(1,3)
	local level = event.research.name:gsub(".*%-", "")
	local name = base:sub(4)
	if New_values[name] and tonumber(level) ~= nil and identifier == "ce-" then
		for _, surface in pairs(game.surfaces) do
			for _, entity in pairs(surface.find_entities_filtered({ type = "assembling-machine" })) do
				local recipe = entity.get_recipe()

				if recipe then
					if recipe.name == base .. "-" .. level - 1 then
						local ingredients = {}
						if entity.is_crafting() then
							ingredients = recipe.ingredients or {}
						end
						entity.set_recipe(base .. "-" .. level)
						local updated_ingredients = 0
						for _, ingredient in pairs(ingredients) do
							if ingredient.type == "item" then
								updated_ingredients = updated_ingredients + entity.insert({
									name = ingredient.name,
									count = ingredient.amount
								})
							elseif ingredient.type == "fluid" then
								updated_ingredients = updated_ingredients + entity.insert_fluid({
									name = ingredient.name,
									amount = ingredient.amount
								})
							end
						end
					end
				end
			end
		end
	end
end

local function switch_tech(event)
	local base = event.research.name:gsub("(.*)%-.*$", "%1")
	local identifier = base:sub(1,3)
	local level = event.research.name:gsub(".*%-", "")
	local name = base:sub(4)
	if New_values[name] and tonumber(level) ~= nil and identifier == "ce-" then
		if New_values[name].max > tonumber(level) then
			game.forces["player"].technologies[base .. "-" .. level + 1].enabled = true
		end

		game.forces["player"].technologies[base .. "-" .. level].enabled = false
		game.forces["player"].technologies[base .. "-" .. level].researched = false
		game.forces["player"].recipes[base .. "-" .. level].enabled = true
		if tonumber(level) > 1 then
			game.forces["player"].recipes[base .. "-" .. level - 1].enabled = false
		end
	end
end

script.on_event(defines.events.on_research_finished, function(event)
	switch_tech(event)
	update_recipes(event)
end)


--gsub("(.*)%-.*$","%1") after specific character
--gsub(".*-","") before specific character
