function Cost_multiplier(ingredients, time, results1, multiplier, results2)
	if results2 == nil then
		results2 = {}
	end
	local decimals=tostring(multiplier):match("%.(%d+)")
	local decimal_count
	if decimals then
		decimal_count = #decimals
	else
		decimal_count = 1
	end
	for i, v in ipairs(ingredients) do
		ingredients[i] = ingredients[i] * (10 ^ decimal_count)
	end
	time = time * (10 ^ decimal_count)
	for i, v in ipairs(results1) do
		results1[i] = results1[i] * multiplier * (10 ^ decimal_count)
	end
	for i, v in ipairs(results2) do
		results2[i] = results2[i] * multiplier * (10 ^ decimal_count)
	end

	local signal = false
	local ingredients_old = {}
	local results1_old = {}
	local results2_old = {}
	local time_old = time*1

	for x, y in ipairs(ingredients) do
		ingredients_old[x] = y
	end
	for x, y in ipairs(results1) do
		results1_old[x] = y
	end
	for x, y in ipairs(results2) do
		results2_old[x] = y
	end



	for i, v in ipairs(ingredients) do
		ingredients[i] = ingredients[i] / 2
		if ingredients[i] ~= math.floor(ingredients[i]) then
			signal = true
		end
	end
	for i, v in ipairs(results1) do
		results1[i] = results1[i] / 2
		if results1[i] ~= math.floor(results1[i]) then
			signal = true
		end
	end
	for i, v in ipairs(results2) do
		results2[i] = results2[i] / 2
		if results2[i] ~= math.floor(results2[i]) then
			signal = true
		end
	end

	time = time / 2


	if signal == false then


		local ingredients_old2 = {}
		local results1_old2 = {}
		local results2_old2 = {}
		local time_old2 = time*1


		for x, y in ipairs(ingredients) do
			ingredients_old2[x] = y
		end
		for x, y in ipairs(results1) do
			results1_old2[x] = y
		end
		for x, y in ipairs(results2) do
			results2_old2[x] = y
		end


		for i, v in ipairs(ingredients) do
			ingredients[i] = ingredients_old[i] / 5
			if ingredients[i] ~= math.floor(ingredients[i]) then
				signal = true
			end
		end

		for i, v in ipairs(results1) do
			results1[i] = results1_old[i] / 5
			if results1[i] ~= math.floor(results1[i]) then
				signal = true
			end
		end
		for i, v in ipairs(results2) do
			results2[i] = results2_old[i] / 5
			if results2[i] ~= math.floor(results2[i]) then
				signal = true
			end
		end

		time = time / 5

		if signal == true then
			ingredients = ingredients_old2
			results1 = results1_old2
			results2 = results2_old2
			time = time_old2
		end

	else
		ingredients = ingredients_old
		results1 = results1_old
		results2 = results2_old
		time = time_old
	end
	local ret = { ingredients, time, results1, results2}
	return ret
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else 
        copy = orig
    end
    return copy
end