local function ce_new_setting_boolean(name, order, default, type)
    if not type then
        type="startup"
    end
    data:extend({
        {
            type = "bool-setting",
            name = name,
            setting_type = type,
            default_value = default,
            order = order
        }
    })
end

local function ce_new_setting_int(name, order, default, min, max, type)
    if not type then
        type="startup"
    end
    data:extend({
        {
            type = "int-setting",
            name = name,
            setting_type = type,
            default_value = default,
            minimum_value = min,
            maximum_value = max,
            order = order
        }
    })
end

local function ce_new_setting_string(name, order, default, type)
    if not type then
        type="startup"
    end
    data:extend({
        {
            type = "string-setting",
            name = name,
            setting_type = type,
            default_value = default,
            order = order
        }
    })
end

local function ce_new_setting_double(name, order, default, min, max, type)
    if not type then
        type="startup"
    end
    data:extend({
        {
            type = "double-setting",
            name = name,
            setting_type = type,
            default_value = default,
            minimum_value = min,
            maximum_value = max,
            order = order
        }
    })
end

ce_new_setting_boolean("ce-update-base-recipes", 1, true, "runtime-global")