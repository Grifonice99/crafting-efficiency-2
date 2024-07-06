local function ce_new_setting_boolean(name, order, default)
    data:extend({
        {
            type = "bool-setting",
            name = name,
            setting_type = "startup",
            default_value = default,
            order = order
        }
    })
end

local function ce_new_setting_int(name, order, default, min, max)
    data:extend({
        {
            type = "int-setting",
            name = name,
            setting_type = "startup",
            default_value = default,
            minimum_value = min,
            maximum_value = max,
            order = order
        }
    })
end

local function ce_new_setting_string(name, order, default)
    data:extend({
        {
            type = "string-setting",
            name = name,
            setting_type = "startup",
            default_value = default,
            order = order
        }
    })
end

local function ce_new_setting_double(name, order, default, min, max)
    data:extend({
        {
            type = "double-setting",
            name = name,
            setting_type = "startup",
            default_value = default,
            minimum_value = min,
            maximum_value = max,
            order = order
        }
    })
end

--ce_new_setting_boolean("ce_enable_debug_log", 1, true)