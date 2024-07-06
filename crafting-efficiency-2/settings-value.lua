New_values = {
    ["copper-cable"] = {
        name = "copper cable efficiency",
        max = 14,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["electronic-circuit"] = {
        name = "electronic circuit efficiency",
        max = 9,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["iron-gear-wheel"] = {
        name = "iron gear wheel efficiency",
        max = 13,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["engine-unit"] = {
        name = "engine unit efficiency",
        max = 9,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 2,
        }
    },
    ["battery"] = {
        name = "battery efficiency",
        max = 6,
        crafting = {
            efficiency = 10,
            category = "chemistry",
        },
        research = {
            level = 2,
        }
    },
    ["advanced-circuit"] = {
        name = "advanced circuit efficiency",
        max = 8,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 2,
        }
    },
    ["plastic-bar"] = {
        name = "plastic bar efficiency",
        max = 7,
        crafting = {
            efficiency = 10,
            category = "chemistry",
        },
        research = {
            level = 2,
        }
    },
    ["processing-unit"] = {
        name = "processing unit efficiency",
        max = 8,
        crafting = {
            efficiency = 10,
            category = "crafting-with-fluid",
        },
        research = {
            level = 3,
        }
    },
    ["electric-engine-unit"] = {
        name = "electric engine unit efficiency",
        max = 15,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["flying-robot-frame"] = {
        name = "flying robot frame efficiency",
        max = 15,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["low-density-structure"] = {
        name = "low density structure efficiency",
        max = 15,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["uranium-processing"] = {
        name = "uranium processing efficiency",
        max = 3,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 4,
        }
    },
    ["automation-science-pack"] = {
        name = "automation science pack efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1,
        }
    },
    ["logistic-science-pack"] = {
        name = "logistic science pack efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 2,
        }
    },
    ["chemical-science-pack"] = {
        name = "chemical science pack efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["production-science-pack"] = {
        name = "production science pack efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 4,
        }
    },
    ["utility-science-pack"] = {
        name = "utility science pack efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 5,
        }
    }
}


function CE_Add_Recipe(data, name)
    if data.name == nil or data.max == nil or data.icon == nil or data.research == nil or data.research.level == nil or
        data.crafting == nil or data.crafting.efficiency == nil or name == nil then
        log("Missing elements in the table.")
        return
    end

    -- check if  max is float or not
    if data.max % 1 ~= 0 then
        log("WARINING: " .. data.name .. " max is float and the cost/result of recipe can b")
        return
    end

    local item = {
        icon = data.icon,
        name = data.name,
        max = data.max,
        crafting = {
            efficiency = data.crafting.efficiency,
        },
        research = {
            level = data.research.level,
        }
    }

    New_values[name] = item
    log("Added " .. name .. " to the table.")
end
