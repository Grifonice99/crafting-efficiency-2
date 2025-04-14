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


ce_new_setting_boolean("ce-bypass-vanilla-limit", "0", false, "startup")
--ce_new_setting_boolean("ce-enable-productivity-module", "1", false, "startup")