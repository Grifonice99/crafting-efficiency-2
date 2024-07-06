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
