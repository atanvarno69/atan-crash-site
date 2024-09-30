local collision_box = { { -0.7, -1.2 }, { 0.7, 1.2 } }
local selection_box = { { -1, -1.5 }, { 1, 1.5 } }
local integration_patch = {
    filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/crash-site-assembling-machine-2-ground.png",
    priority = "very-low",
    width = 146,
    height = 106,
    shift = util.by_pixel(-8, -4),
    frame_count = 1,
    line_length = 1,
    hr_version = {
        filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/hr-crash-site-assembling-machine-2-ground.png",
        priority = "very-low",
        width = 290,
        height = 238,
        shift = util.by_pixel(-8, -10),
        frame_count = 1,
        line_length = 1,
        scale = 0.5,
    },
}

local machine = require("prototypes.entities.common").assembling_machine_template(
    "crash-site-assembling-machine-2",
    collision_box,
    selection_box,
    integration_patch
)

local animation_speed = 2 / 3
machine.animation = {
    layers = {
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/crash-site-assembling-machine-2.png",
            priority = "very-low",
            width = 100,
            height = 98,
            frame_count = 20,
            line_length = 5,
            shift = util.by_pixel(-4, -10),
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/hr-crash-site-assembling-machine-2.png",
                priority = "very-low",
                width = 198,
                height = 200,
                frame_count = 20,
                line_length = 5,
                shift = util.by_pixel(-4, -11),
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/crash-site-assembling-machine-2-shadow.png",
            priority = "very-low",
            width = 106,
            height = 86,
            frame_count = 20,
            line_length = 5,
            draw_as_shadow = true,
            shift = util.by_pixel(2, -8),
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/hr-crash-site-assembling-machine-2-shadow.png",
                priority = "very-low",
                width = 208,
                height = 174,
                frame_count = 20,
                line_length = 5,
                draw_as_shadow = true,
                shift = util.by_pixel(3, -9),
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
    },
}
machine.working_visualisations = {
    {
        animation = {
            filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/crash-site-assembling-machine-2-light.png",
            priority = "very-low",
            width = 84,
            height = 62,
            frame_count = 20,
            line_length = 5,
            shift = util.by_pixel(-8, -6),
            blend_mode = "additive",
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-2/hr-crash-site-assembling-machine-2-light.png",
                priority = "very-low",
                width = 174,
                height = 124,
                frame_count = 20,
                line_length = 5,
                shift = util.by_pixel(-7, -4),
                blend_mode = "additive",
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
    },
}

data:extend({ machine })
