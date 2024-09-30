data:extend({
    {
        type = "sprite",
        name = "warning-icon",
        filename = "__core__/graphics/icons/alerts/warning-icon.png",
        size = 64,
    },
})

local flags = { "placeable-player", "player-creation", "hidden", "not-rotatable" }
local mineable = {
    mining_time = 4,
    results = {
        { type = "item", name = "iron-plate", amount_min = 5, amount_max = 9, probability = 1 },
        { type = "item", name = "iron-gear-wheel", amount_min = 3, amount_max = 5, probability = 0.75 },
        { type = "item", name = "electronic-circuit", amount_min = 1, amount_max = 5, probability = 0.75 },
    },
    mining_particle = "shell-particle",
}

for _, assembler in pairs({ "crash-site-assembling-machine-1-repaired", "crash-site-assembling-machine-2-repaired" }) do
    data.raw["assembling-machine"][assembler].crafting_categories = { "crafting", "basic-crafting" }
    data.raw["assembling-machine"][assembler].crafting_speed = 0.33
    data.raw["assembling-machine"][assembler].flags = flags
    data.raw["assembling-machine"][assembler].localised_description = {
        "entity-description.crash-site-assembling-machine",
        { "entity-description.crash-site-building" },
    }
    data.raw["assembling-machine"][assembler].localised_name = { "entity-name.crash-site-assembling-machine" }
    data.raw["assembling-machine"][assembler].minable = mineable
end

data.raw["container"]["crash-site-chest-1"].inventory_size = 8
data.raw["container"]["crash-site-chest-2"].inventory_size = 8

data.raw["lab"]["crash-site-lab-repaired"].flags = flags
data.raw["lab"]["crash-site-lab-repaired"].localised_description = {
    "entity-description.crash-site-lab-repaired",
    { "entity-description.crash-site-building" },
}
data.raw["lab"]["crash-site-lab-repaired"].minable = mineable
data.raw["lab"]["crash-site-lab-repaired"].researching_speed = 0.75

data.raw["electric-energy-interface"]["crash-site-generator"].energy_source.buffer_capacity = "240kJ"
data.raw["electric-energy-interface"]["crash-site-generator"].energy_source.output_flow_limit = "240kW"
data.raw["electric-energy-interface"]["crash-site-generator"].energy_production = "240kW"
data.raw["electric-energy-interface"]["crash-site-generator"].flags = flags
data.raw["electric-energy-interface"]["crash-site-generator"].localised_description = {
    "entity-description.crash-site-generator",
    { "entity-description.crash-site-building" },
}
data.raw["electric-energy-interface"]["crash-site-generator"].minable = mineable
