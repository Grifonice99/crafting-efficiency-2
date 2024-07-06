Recipes = {
    ["copper-cable"] = {
        name = "Copper cable efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["copper-plate"] = {
        name = "Copper plate efficiency",
        max = 15,
        crafting = {
            efficiency = 20,
            category = "smelting",
        },
        research = {
            level = 1
        }
    },
    ["iron-plate"] = {
        name = "Iron plate efficiency",
        max = 15,
        crafting = {
            efficiency = 20,
            category = "smelting",
        },
        research = {
            level = 1
        }
    },
    ["electronic-circuit"] = {
        name = "Electronic circuit efficiency",
        max = 16,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["iron-gear-wheel"] = {
        name = "Iron gear wheel efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    },
    ["steel-plate"] = {
        name = "Steel plate efficiency",
        max = 15,
        crafting = {
            efficiency = 20,
            category = "smelting",
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
    ["basic-oil-processing"]={
        name = "Basic oil processing efficiency",
        max=13,
        crafting = {
            efficiency = 10,
            category = "oil-processing",
        },
        research = {
            level = 2
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
    ["advanced-oil-processing"] = {
        name = "Advanced oil processing efficiency",
        max = 12,
        crafting = {
            efficiency = 10,
            category = "oil-processing"
        },
        research = {
            level = 3
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
    ["rocket-fuel"] = {
        name = "Rocket fuel efficiency",
        max = 12,
        crafting = {
            efficiency = 10,
            category = "crafting-with-fluid",
        },
        research = {
            level = 3
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
    ["coal-liquefaction"] = {
        name = "Coal liquefaction efficiency",
        max = 18,
        crafting = {
            efficiency = 10,
            category = "oil-processing"
        },
        research = {
            level = 4
        }
    },
    ["lubricant"] = {
        name = "Lubricant efficiency",
        max = 14,
        fluid = true,
        crafting = {
            efficiency = 10,
            category = "chemistry",
        },
        research = {
            level = 4
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
    ["electric-furnace"] = {
        name = "Electric Furnace efficiency",
        max = 15,
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
    },
    ["satellite"] = {
        name = "Satellite efficiency",
        max=15,
        crafting = {
            efficiency = 20
        },
        research = {
            level = 6
        }
    }

}


function CE_Add_Recipe(data, name, ignore_warning, no_log)
    if no_log == nil then
        no_log = false
    end
    if data.name == nil or data.max == nil or data.research == nil or data.research.level == nil or
        data.crafting == nil or name == nil then
        log("Missing elements in the table.")
        return
    end

    
    

    local item = {
        name = data.name,
        max = data.max,
        crafting = {
            efficiency = data.crafting.efficiency,
        },
        research = {
            level = data.research.level,
        }
    }
    if data.icon then
        item.icon=data.icon
    end
    if data.fluid then
        item.fluid=data.fluid
    end
    if data.crafting.efficiency then
        item.crafting.efficiency=data.crafting.efficiency
        if data.crafting.efficiency % 1 ~= 0 and not ignore_warning then
            log("warning, it is recommended to use an efficiency divisible by 10, current efficiency = " .. tostring(data.crafting.efficiency) )
        end
    else
        log("warning, using 5% in efficiency for the recipe".. data.name ..", it's raccomandate to add the args and use 10%" )
        
    end
    Recipes[name] = item
    if not no_log then
        log("Added " .. name .. " to the table.")
    end
end
