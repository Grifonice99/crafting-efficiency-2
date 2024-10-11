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

	local ingredients_old = deepcopy(ingredients)
	local results1_old = deepcopy(results1)
	local results2_old = deepcopy(results2)
	local time_old = time*1



	local result = Division(ingredients, results1, results2, time, 10, decimal_count)	
	if result[1] then
		ingredients = deepcopy(ingredients_old)
		results1 = deepcopy(results1_old)
		results2 = deepcopy(results2_old)
		time = time_old*1
	else 
		return result[2]
	end



	local result = Division(ingredients, results1, results2, time, 5, decimal_count)
	if result[1] then
		ingredients = deepcopy(ingredients_old)
		results1 = deepcopy(results1_old)
		results2 = deepcopy(results2_old)
		time = time_old*1
	else 
		return result[2]
	end



	local result = Division(ingredients, results1, results2, time, 2, decimal_count)
	if result[1] then
		ingredients = deepcopy(ingredients_old)
		results1 = deepcopy(results1_old)
		results2 = deepcopy(results2_old)
		time = time_old*1
	else 
		return result[2]
	end

	return { ingredients, time, results1, results2}
end


function Division(ingredients, results1, results2, time, divider, decimal_count)
	local signal
	for i, v in ipairs(ingredients) do
		ingredients[i] = Round(ingredients[i] / divider, decimal_count)
		if ingredients[i] ~= math.floor(ingredients[i]) then
			signal = true
		end
	end
	for i, v in ipairs(results1) do
		results1[i] = Round(results1[i] / divider, decimal_count)
		if results1[i] ~= math.floor(results1[i]) then
			signal = true
		end
	end
	for i, v in ipairs(results2) do
		results2[i] = Round(results2[i] / divider, decimal_count)
		if results2[i] ~= math.floor(results2[i]) then
			signal = true
		end
	end
	time = Round(time / divider, decimal_count)
	return {signal, {ingredients, time, results1, results2}}
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

function Round(number, decimals)
	local power = 10^decimals
	return math.floor(number * power) / power
end