local picture =
{
    filename = "__crafting-efficiency-2__/Graphics/Icons/ce-switcher.png",
    priority = "extra-high",
    width = 120,
    height = 120,
}

data:extend(
    {
        {
            type = "custom-input",
            name = "ce-switcher",
            key_sequence = "SHIFT + B"
        },
        {
            type = "shortcut",
            name = "ce-switcher",
            order = "a[ce-switcher]",
            action = "lua",
            associate_control_input = "ce-switcher",
            icon = picture,
            small_icon = picture,
            disabled_small_icon = picture
        },
        {
            type = "selection-tool",
            name = "ce-switcher",
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-switcher.png",
            icon_size = 120,
            subgroup = "tool",
            order = "c[automated-construction]-b[deconstruction-planner]-e",
            stack_size = 1,
            flags = {"only-in-cursor", "not-stackable", "hidden"},
            selection_color = { r = 0, g = 83, b = 255 },
            alt_selection_color = { r = 0, g = 83, b = 255 },
            selection_mode = { "buildable-type" },
            alt_selection_mode = { "buildable-type" },
            selection_cursor_box_type = "pair",
            alt_selection_cursor_box_type = "pair"
        }
    }
)
