New_values = {
    ["copper-cable"] = {
        name = "copper cable efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["electronic-circuit"] = {
        name = "electronic circuit efficiency",
        max = 16,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["iron-gear-wheel"] = {
        name = "iron gear wheel efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["engine-unit"] = {
        name = "Engine unit efficiency",
        max = 16,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 2,
        }
    },
    ["battery"] = {
        name = "Battery efficiency",
        max = 10,
        crafting = {
            efficiency = 10,
            category = "chemistry",
        },
        research = {
            level = 2,
        }
    },
    ["advanced-circuit"] = {
        name = "Advanced circuit efficiency",
        max = 16,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 2,
        }
    },
    ["plastic-bar"] = {
        name = "Plastic bar efficiency",
        max = 12,
        crafting = {
            efficiency = 10,
            category = "chemistry",
        },
        research = {
            level = 2,
        }
    },
    ["sulfur"] = {
        name = "Sulfur processing efficiency",
        max = 22,
        crafting = {
            efficiency = 10,
            category = "chemistry",
        },
        research = {
            level = 2,
        }
    },
    ["processing-unit"] = {
        name = "Processing unit efficiency",
        max = 14,
        crafting = {
            efficiency = 10,
            category = "crafting-with-fluid",
        },
        research = {
            level = 3,
        }
    },
    ["electric-engine-unit"] = {
        name = "Electric engine unit efficiency",
        max = 15,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["flying-robot-frame"] = {
        name = "Flying robot frame efficiency",
        max = 15,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["low-density-structure"] = {
        name = "Low density structure efficiency",
        max = 15,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["uranium-processing"] = {
        name = "Uranium processing efficiency",
        max = 3,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 4,
        }
    },
    ["automation-science-pack"] = {
        name = "Automation science pack efficiency",
        max = 22,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1,
        }
    },
    ["logistic-science-pack"] = {
        name = "Logistic science pack efficiency",
        max = 22,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 2,
        }
    },
    ["chemical-science-pack"] = {
        name = "Chemical science pack efficiency",
        max = 22,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 3,
        }
    },
    ["production-science-pack"] = {
        name = "Production science pack efficiency",
        max = 22,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 4,
        }
    },
    ["utility-science-pack"] = {
        name = "Utility science pack efficiency",
        max = 22,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 5,
        }
    }
}


function CE_Add_Recipe(data, name, ignore_warning)
    if data.name == nil or data.max == nil or data.icon == nil or data.research == nil or data.research.level == nil or
        data.crafting == nil or data.crafting.efficiency == nil or name == nil then
        log("Missing elements in the table.")
        return
    end

    
    if data.max % 1 ~= 0 and not ignore_warning then
        log("WARINING: the max of " .. name .. "value is a float and the cost of the recipes and the result can be huge, It is recommended to use an integer value.")
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
