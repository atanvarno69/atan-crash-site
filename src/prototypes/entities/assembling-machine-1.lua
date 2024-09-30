local collision_box = { { -1.2, -0.7 }, { 1.2, 0.7 } }
local selection_box = { { -1.5, -1 }, { 1.5, 1 } }
local integration_patch = {
    filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/crash-site-assembling-machine-1-ground.png",
    priority = "very-low",
    width = 208,
    height = 116,
    shift = util.by_pixel(-24, 12),
    frame_count = 1,
    line_length = 1,
    hr_version = {
        filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/hr-crash-site-assembling-machine-1-ground.png",
        priority = "very-low",
        width = 446,
        height = 234,
        shift = util.by_pixel(-31, 12),
        frame_count = 1,
        line_length = 1,
        scale = 0.5,
    },
}

local machine = require("prototypes.entities.common").assembling_machine_template(
    "crash-site-assembling-machine-1",
    collision_box,
    selection_box,
    integration_patch
)

local animation_speed = 2 / 3
machine.animation = {
    layers = {
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/crash-site-assembling-machine-1.png",
            priority = "very-low",
            width = 142,
            height = 92,
            frame_count = 20,
            line_length = 5,
            shift = util.by_pixel(-12, 2),
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/hr-crash-site-assembling-machine-1.png",
                priority = "very-low",
                width = 282,
                height = 182,
                frame_count = 20,
                line_length = 5,
                shift = util.by_pixel(-12, 3),
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/crash-site-assembling-machine-1-shadow.png",
            priority = "very-low",
            width = 140,
            height = 84,
            frame_count = 20,
            line_length = 5,
            draw_as_shadow = true,
            shift = util.by_pixel(4, 6),
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/hr-crash-site-assembling-machine-1-shadow.png",
                priority = "very-low",
                width = 278,
                height = 168,
                frame_count = 20,
                line_length = 5,
                draw_as_shadow = true,
                shift = util.by_pixel(4, 6),
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
    },
}
machine.working_visualisations = {
    {
        animation = {
            filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/crash-site-assembling-machine-1-light.png",
            priority = "very-low",
            width = 78,
            height = 64,
            frame_count = 20,
            line_length = 5,
            shift = util.by_pixel(10, -10),
            blend_mode = "additive",
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-assembling-machine-1/hr-crash-site-assembling-machine-1-light.png",
                priority = "very-low",
                width = 162,
                height = 120,
                frame_count = 20,
                line_length = 5,
                shift = util.by_pixel(12, -8),
                blend_mode = "additive",
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
    },
}

data:extend({ machine })
