local common = require("prototype.common")

local generator = table.deepcopy(data.raw["electric-energy-interface"]["crash-site-generator"])
generator.energy_source.buffer_capacity = "240kJ"
generator.energy_source.output_flow_limit = "240kW"
generator.energy_production = "240kW"
generator.flags = common.flags
generator.localised_description = {
    "entity-description.crash-site-generator",
    { "entity-description.crash-site-building" },
}
generator.minable = common.mineable

data.raw["electric-energy-interface"]["crash-site-generator"] = nil

data:extend({ generator })
