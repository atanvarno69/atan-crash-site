local common = require("prototype.common")

local generator = table.deepcopy(data.raw["electric-energy-interface"]["crash-site-generator"])
generator.name = "crash-site-energy-interface"
generator.energy_source.buffer_capacity = "240kJ"
generator.energy_source.output_flow_limit = "240kW"
generator.usage_priority = "primary-output"
generator.energy_production = "240kW"
generator.flags = common.flags
generator.localised_description = {
    "entity-description.crash-site-place_result",
    { "entity-description.crash-site-building" },
}
generator.minable = common.minable

data:extend({ generator })
