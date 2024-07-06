function Cost_multiplier(ingredients, time, results, multiplier)


	for i, v in ipairs(ingredients) do
		ingredients[i] = ingredients[i] * 10
	end
	time=time*10
	for i,v in ipairs(results) do
		results[i] = results[i] * multiplier*10
	end

	local signal = false
	local ingredients_old = {}
	local results_old = {}

	for x, y in ipairs(ingredients) do
		ingredients_old[x] = y
	end
	for x, y in ipairs(results) do
		results_old[x] = y
	end


	
	for i, v in ipairs(ingredients) do
		ingredients[i] = ingredients[i] / 2
		if ingredients[i] ~= math.floor(ingredients[i]) then
			signal = true
		end
	end
	for i, v in ipairs(results) do
		results[i] = results[i] / 2
		if results[i] ~= math.floor(results[i]) then
			signal = true
		end
	end



	if signal == false then

		local time_old=time
		time=time/2


		local ingredients_old2 = {}
		local results_old2 = {}


		for x, y in ipairs(ingredients) do
			ingredients_old2[x] = y
		end
		for x, y in ipairs(results) do
			results_old2[x] = y
		end


		for i, v in ipairs(ingredients) do
			ingredients[i] = ingredients_old[i] / 5
			if ingredients[i] ~= math.floor(ingredients[i]) then
				signal = true
			end
		end

		for i, v in ipairs(results) do
			results[i] = results_old[i] / 5
			if results[i] ~= math.floor(results[i]) then
				signal = true
			end
		end

		if signal == true then
			ingredients = ingredients_old2
			results = results_old2 
		else
			time=time_old/5
		end
		
	else
		ingredients = ingredients_old
		results = results_old
	end

	return {ingredients, time, results}
end


