local select = {
    border_color = { r = 0, g = 83, b = 255 },
    mode = {"buildable-type"},
    cursor_box_type = "pair"
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
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-up.png",
            small_icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-up.png",
            icon_size = 120,
            small_icon_size = 120,
            disabled_small_icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-up.png",
        },
        {
            type = "shortcut",
            name = "ce-reset",
            order = "a[ce-reset]",
            action = "lua",
            associate_control_input = "ce-reset",
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-down.png",
            small_icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-down.png",
            icon_size = 120,
            small_icon_size = 120,
            disabled_small_icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-down.png",
        },
        {
            type = "selection-tool",
            name = "ce-update",
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-up.png",
            icon_size = 120,
            subgroup = "tool",
            order = "c[automated-construction]-b[deconstruction-planner]-e",
            stack_size = 1,
            flags = {"only-in-cursor", "not-stackable"},
            select = select,
            alt_select = select,
        },
        {
            type = "selection-tool",
            name = "ce-reset",
            icon = "__crafting-efficiency-2__/Graphics/Icons/ce-arrow-down.png",
            icon_size = 120,
            subgroup = "tool",
            order = "c[automated-construction]-b[deconstruction-planner]-e",
            stack_size = 1,
            flags = {"only-in-cursor", "not-stackable"},
            select = select,
            alt_select = select,
        }
    }
)
