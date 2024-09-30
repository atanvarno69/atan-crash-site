local M = {}

M.template = function(type, name, collision, selection, working_sound, integration_patch, energy_source, energy_usage)
    local sounds = require("__base__/prototypes/entity/sounds")
    return {
        type = type,
        name = name,
        localised_description = { "entity-description.crash-site-building" },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        collision_box = collision,
        flags = { "placeable-player", "player-creation", "hidden", "not-rotatable" },
        icons = { { icon = "__atan-crash-site__/graphics/icons/" .. name .. ".png", icon_mipmaps = 4, icon_size = 64 } },
        map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
        minable = {
            mining_time = 4,
            mining_particle = "shell-particle",
            results = {
                { type = "item", name = "iron-plate", amount_min = 5, amount_max = 13, probability = 1 },
                { type = "item", name = "copper-cable", amount_min = 4, amount_max = 8, probability = 1 },
                { type = "item", name = "iron-gear-wheel", amount_min = 3, amount_max = 5, probability = 0.75 },
                { type = "item", name = "electronic-circuit", amount_min = 2, amount_max = 3, probability = 0.75 },
            },
        },
        selection_box = selection,
        vehicle_impact_sound = sounds.generic_impact,
        working_sound = working_sound,
        corpse = "big-remnants",
        create_ghost_on_death = false,
        dying_explosion = "medium-explosion",
        integration_patch = integration_patch,
        integration_patch_render_layer = "decals",
        max_health = 150,
        resistances = { { type = "fire", percent = 70 } },
        energy_source = energy_source,
        energy_usage = energy_usage,
    }
end

M.assembling_machine_template = function(name, collision, selection, integration_patch)
    local working_sound = {
        sound = {
            {
                filename = "__atan-crash-site__/sounds/crash-site-assembling-machine.ogg",
                volume = 0.8,
            },
        },
    }
    local energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 4,
    }
    local machine = M.template(
        "assembling-machine",
        name,
        collision,
        selection,
        working_sound,
        integration_patch,
        energy_source,
        "90kW"
    )
    machine.crafting_categories = { "crafting", "basic-crafting", "advanced-crafting" }
    machine.crafting_speed = 1 / 3
    machine.ingredient_count = 2
    return machine
end

return M
