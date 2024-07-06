require("settings-value")

local function update_recipes(event)
	local base = event.research.name:gsub("(.*)%-.*$", "%1")
	local identifier = base:sub(1, 3)
	local level = event.research.name:gsub(".*%-", "")
	local name = base:sub(4)
	if Recipes[name] and tonumber(level) ~= nil and identifier == "ce-" then
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

local function reset_forces()
	local technologies = {}
	for index, tech in pairs(game.forces.player.technologies) do
		local base = tech.name:gsub("(.*)%-.*$", "%1")
		local identifier = base:sub(1, 3)
		local level = tech.name:gsub(".*%-", "")
		if identifier == "ce-" and tonumber(level) then
			tech.reload()
			tech.enabled = true
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
		for level = b.level - 1, 1, -1 do
			game.forces.player.technologies[base .. "-" .. tostring(level)].researched = true
			game.forces.player.technologies[base .. "-" .. tostring(level)].force.recipes[base .. "-" .. tostring(level)].enabled = false
			game.forces.player.recipes[base .. "-" .. tostring(level)].enabled = false
		end
	end
end

local function give_switcher(event)
	local player = game.get_player(event.player_index)
	player.clear_cursor()
	player.cursor_stack.set_stack({ name = "ce-switcher", count = 1 })
end

local function update__entity_recipe(event)
	for a, b in pairs(event.entities) do
		if b.type == "assembling-machine" then
			local recipe = b.get_recipe()
			if recipe then
				local base = recipe.name:gsub("(.*)%-.*$", "%1")
				local identifier = base:sub(1, 3)
				local level = recipe.name:gsub(".*%-", "")
				if tonumber(level) == nil then
					base = "ce-"..recipe.name
					level = 1
				end

				local name = base:sub(4)
				if Recipes[name] or Recipes[recipe.name]then
					local technologies = {}
					for index, tech in pairs(game.forces.player.technologies) do
						local base2 = tech.name:gsub("(.*)%-.*$", "%1")
						local identifier2 = base2:sub(1, 3)
						local level2 = tech.name:gsub(".*%-", "")
						if identifier2 == "ce-" and tonumber(level2) then
							tech.reload()
							tech.enabled = true
							if not technologies[base2] then
								technologies[base2] = {}
								technologies[base2].index = {}
							end
							if tech.researched then
								table.insert(technologies[base2].index, tonumber(level2))
								technologies[base2][level2] = tech
							end
						end
					end
					if #technologies[base].index > tonumber(level) then
						local last_recipe = technologies[base][tostring(#technologies[base].index)].name
						local ingredients = {}
						if b.is_crafting() then
							ingredients = recipe.ingredients or {}
						end
						b.set_recipe(last_recipe)
						local updated_ingredients = 0
						for _, ingredient in pairs(ingredients) do
							if ingredient.type == "item" then
								updated_ingredients = updated_ingredients + b.insert({
									name = ingredient.name,
									count = ingredient.amount
								})
							elseif ingredient.type == "fluid" then
								updated_ingredients = updated_ingredients + b.insert_fluid({
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

script.on_configuration_changed(reset_forces)

script.on_event("ce-switcher", function(event)
	give_switcher(event)
end)

script.on_event(defines.events.on_lua_shortcut, function(event)
	if event.prototype_name == "ce-switcher" then
		give_switcher(event)
	end
end)

script.on_event(defines.events.on_technology_effects_reset, function(event)
	reset_forces()
end)

script.on_event(defines.events.on_player_selected_area, function(event)
	if event.item == "ce-switcher" then
		update__entity_recipe(event)
	end
end)

script.on_event(defines.events.on_player_alt_selected_area, function(event)
	if event.item == "ce-switcher" then
		update__entity_recipe(event)
	end
end)

script.on_event(defines.events.on_research_finished, function(event)
	update_recipes(event)
end)

script.on_event(defines.events.on_player_cheat_mode_enabled, function(event)
	reset_forces()
end)
