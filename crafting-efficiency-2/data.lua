require("settings-value")
require("prototypes.switcher")

local solid_fuel = { "solid-fuel-from-light-oil", "solid-fuel-from-petroleum-gas", "solid-fuel-from-heavy-oil" }
for _, name in pairs(solid_fuel) do
    local data = {
        name = "Solid fuel efficiency",
        max = 13,
        crafting = {
            efficiency = 10,
            category = "chemistry"
        },
        research = {
            level = 3
        }
    }
    CE_Add_Recipe(data, name, false, true)
end
if mods["aai-industry"] then
    local data = {
        name = "Electronic circuit (stone) efficiency",
        max = 16,
        icon = "__base__/graphics/icons/electronic-circuit.png",
        crafting = {
            efficiency = 10,
        },
        research = {
            level = 1
        }
    }
    CE_Add_Recipe(data, "electronic-circuit-stone", false, true)
end