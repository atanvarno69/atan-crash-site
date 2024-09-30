local collision_box = { { -2.5, -1.5 }, { 2.5, 1.5 } }
local selection_box = { { -2.2, -1.2 }, { 2.2, 1.2 } }
local working_sound = {
    sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
    },
    audible_distance_modifier = 0.7,
    fade_in_ticks = 4,
    fade_out_ticks = 20,
}
local integration_patch = {
    filename = "__atan-crash-site__/graphics/entities/crash-site-lab/crash-site-lab-ground.png",
    priority = "very-low",
    width = 352,
    height = 170,
    shift = util.by_pixel(-48, 12),
    frame_count = 1,
    line_length = 1,
    hr_version = {
        filename = "__atan-crash-site__/graphics/entities/crash-site-lab/hr-crash-site-lab-ground.png",
        priority = "very-low",
        width = 700,
        height = 344,
        shift = util.by_pixel(-49, 11),
        frame_count = 1,
        line_length = 1,
        scale = 0.5,
    },
}
local energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = 4 }

local lab = require("prototypes.entities.common").template(
    "lab",
    "crash-site-lab",
    collision_box,
    selection_box,
    working_sound,
    integration_patch,
    energy_source,
    "60kW"
)

lab.inputs = { "automation-science-pack" }
lab.on_animation = {
    layers = {
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-lab/crash-site-lab.png",
            priority = "very-low",
            width = 244,
            height = 126,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-18, 14),
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-lab/hr-crash-site-lab.png",
                priority = "very-low",
                width = 488,
                height = 252,
                frame_count = 1,
                line_length = 1,
                repeat_count = 24,
                animation_speed = 1 / 3,
                shift = util.by_pixel(-18, 14),
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-lab/crash-site-lab-beams.png",
            priority = "very-low",
            width = 68,
            height = 50,
            frame_count = 24,
            line_length = 6,
            animation_speed = 1 / 3,
            shift = util.by_pixel(36, -20),
            blend_mode = "additive",
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-lab/hr-crash-site-lab-beams.png",
                priority = "very-low",
                width = 130,
                height = 100,
                frame_count = 24,
                line_length = 6,
                animation_speed = 1 / 3,
                shift = util.by_pixel(37, -20),
                blend_mode = "additive",
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-lab/crash-site-lab-shadow.png",
            priority = "very-low",
            width = 350,
            height = 148,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-12, 12),
            draw_as_shadow = true,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-lab/hr-crash-site-lab-shadow.png",
                priority = "very-low",
                width = 696,
                height = 302,
                frame_count = 1,
                line_length = 1,
                repeat_count = 24,
                animation_speed = 1 / 3,
                shift = util.by_pixel(-11, 12),
                scale = 0.5,
                draw_as_shadow = true,
            },
        },
    },
}
lab.off_animation = {
    layers = {
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-lab/crash-site-lab.png",
            priority = "very-low",
            width = 244,
            height = 126,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-18, 14),
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-lab/hr-crash-site-lab.png",
                priority = "very-low",
                width = 488,
                height = 252,
                frame_count = 1,
                line_length = 1,
                repeat_count = 24,
                animation_speed = 1 / 3,
                shift = util.by_pixel(-18, 14),
                scale = 0.5,
            },
        },
        {
            filename = "__atan-crash-site__/graphics/entities/crash-site-lab/crash-site-lab-shadow.png",
            priority = "very-low",
            width = 350,
            height = 148,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-12, 12),
            draw_as_shadow = true,
            hr_version = {
                filename = "__atan-crash-site__/graphics/entities/crash-site-lab/hr-crash-site-lab-shadow.png",
                priority = "very-low",
                width = 696,
                height = 302,
                frame_count = 1,
                line_length = 1,
                repeat_count = 24,
                animation_speed = 1 / 3,
                shift = util.by_pixel(-11, 12),
                scale = 0.5,
                draw_as_shadow = true,
            },
        },
    },
}
lab.researching_speed = 0.75

data:extend({ lab })
