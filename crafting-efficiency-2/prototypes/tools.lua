local arrow_up =
{
    filename = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-up.png",
    priority = "extra-high",
    width = 120,
    height = 120,
}local arrow_down =
{
    filename = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-down.png",
    priority = "extra-high",
    width = 120,
    height = 120,
}

data:extend(
    {
        {
            type = "custom-input",
            name = "ce-update",
            key_sequence = "SHIFT + B"
        },{
            type = "custom-input",
            name = "ce-reset",
            key_sequence = "SHIFT + C"
        },
        {
            type = "shortcut",
            name = "ce-update",
            order = "a[ce-update]",
            action = "lua",
            associate_control_input = "ce-update",
            icon = arrow_up,
            small_icon = arrow_up,
            disabled_small_icon = arrow_up
        },
        {
            type = "shortcut",
            name = "ce-reset",
            order = "a[ce-reset]",
            action = "lua",
            associate_control_input = "ce-reset",
            icon = arrow_down,
            small_icon = arrow_down,
            disabled_small_icon = arrow_down
        },
        {
            type = "selection-tool",
            name = "ce-update",
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-up.png",
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
        },
        {
            type = "selection-tool",
            name = "ce-reset",
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-down.png",
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
