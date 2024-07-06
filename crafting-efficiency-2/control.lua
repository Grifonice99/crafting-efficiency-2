require("settings-value")

local function update_recipes(event)
	local base = event.research.name:gsub("(.*)%-.*$", "%1")
	local identifier = base:sub(1, 3)
	local level = event.research.name:gsub(".*%-", "")
	local name = base:sub(4)
	if New_values[name] and tonumber(level) ~= nil and identifier == "ce-" then
		if tonumber(level) > 1 then
			event.research.force.recipes[base .. "-" .. level - 1].enabled = false
		end
		for _, surface in pairs(game.surfaces) do
			for _, entity in pairs(surface.find_entities_filtered({ type = "assembling-machine" })) do
				local recipe = entity.get_recipe()

				if recipe then
					if recipe.name == base .. "-" .. level - 1 or
						recipe.name == name and settings.global["ce-update-base-recipes"].value then
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

local function lock_recipe()
	local technologies = {}
	for index, tech in pairs(game.forces.player.technologies) do
		local base = tech.name:gsub("(.*)%-.*$", "%1")
		local identifier = base:sub(1, 3)
		local level = tech.name:gsub(".*%-", "")
		if identifier == "ce-" and tonumber(level) then	
			tech.reload()
			tech.enabled=true
			if not technologies[base] then
				technologies[base] = {}
				technologies[base].index = {}
			end
			table.insert(technologies[base].index, tonumber(level))
			technologies[base][level] = tech
		end
	end
	local last_tech = {}
	for a, b in pairs(technologies) do
		table.sort(b.index)
		local max = b.index[#b.index]
		local switch = true
		while switch do
			if b[tostring(max)].researched then
				table.insert(last_tech, b[tostring(max)])
				switch = false
			elseif max == 1 then
				switch = false
			else
				max = max - 1
			end
		end
	end
	for a, b in pairs(last_tech) do
		local base = b.name:gsub("(.*)%-.*$", "%1")
		local identifier = base:sub(1, 3)
		for level = b.level - 1, 1, -1 do
			game.forces.player.technologies[base .. "-" .. tostring(level)].force.recipes[base .. "-" .. tostring(level)].enabled = false
			game.forces.player.recipes[base .. "-" .. tostring(level)].enabled = false
		end
	end
end

script.on_configuration_changed(lock_recipe)

script.on_event(defines.events.on_technology_effects_reset, function (event)
	lock_recipe()
end)
script.on_event(defines.events.on_research_finished, function(event)
	update_recipes(event)
end)
