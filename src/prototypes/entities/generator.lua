local collision_box = { { -1.5, -0.9 }, { 0.9, 0.9 } }
local selection_box = { { -1.5, -0.9 }, { 0.9, 0.9 } }
local integration_patch = {
    filename = "__atan-crash-site__/graphics/entities/crash-site-generator/crash-site-generator-ground.png",
    priority = "very-low",
    width = 192,
    height = 180,
    shift = util.by_pixel(-28, -38),
    frame_count = 1,
    line_length = 1,
    hr_version = {
        filename = "__atan-crash-site__/graphics/entities/crash-site-generator/hr-crash-site-generator-ground.png",
        priority = "very-low",
        width = 384,
        height = 360,
        shift = util.by_pixel(-28, -38),
        frame_count = 1,
        line_length = 1,
        scale = 0.5,
    },
}
local energy_source = {
    type = "electric",
    buffer_capacity = "235kJ",
    usage_priority = "primary-output",
    input_flow_limit = "0kW",
    output_flow_limit = "235kW",
}

local gen = require("prototypes.entities.common").template(
    "electric-energy-interface",
    "crash-site-generator",
    collision_box,
    selection_box,
    nil,
    integration_patch,
    energy_source,
    "0kW"
)

local animation_speed = 1 / 3
gen.animation = {
    layers = {
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-generator/crash-site-generator.png",
            priority = "very-low",
            width = 142,
            height = 128,
            frame_count = 5,
            line_length = 5,
            repeat_count = 16,
            shift = util.by_pixel(-10, -24),
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-generator/hr-crash-site-generator.png",
                priority = "very-low",
                width = 286,
                height = 252,
                frame_count = 5,
                line_length = 5,
                repeat_count = 16,
                animation_speed = animation_speed,
                shift = util.by_pixel(-11, -23),
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-generator/crash-site-generator-beams.png",
            priority = "very-low",
            width = 48,
            height = 116,
            frame_count = 16,
            line_length = 4,
            repeat_count = 5,
            shift = util.by_pixel(24, -30),
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-generator/hr-crash-site-generator-beams.png",
                priority = "very-low",
                width = 224,
                height = 232,
                frame_count = 16,
                line_length = 4,
                repeat_count = 5,
                animation_speed = animation_speed,
                shift = util.by_pixel(-8, -30),
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-generator/crash-site-generator-shadow.png",
            priority = "very-low",
            width = 236,
            height = 78,
            frame_count = 1,
            line_length = 1,
            repeat_count = 80,
            shift = util.by_pixel(26, 4),
            draw_as_shadow = true,
            animation_speed = animation_speed,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-generator/hr-crash-site-generator-shadow.png",
                priority = "very-low",
                width = 474,
                height = 152,
                frame_count = 1,
                line_length = 1,
                repeat_count = 80,
                draw_as_shadow = true,
                shift = util.by_pixel(25, 5),
                animation_speed = animation_speed,
                scale = 0.5,
            },
        },
    },
}
gen.energy_production = "235kW"
gen.light = { intensity = 0.75, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 }, shift = { 64 / 64, -140 / 64 } }

data:extend({ gen })
