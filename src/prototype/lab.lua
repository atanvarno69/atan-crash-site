local common = require("prototype.common")

local lab = table.deepcopy(data.raw["lab"]["crash-site-lab-repaired"])
lab.name = "crash-site-lab"
lab.flags = common.flags
lab.localised_description = {
    "entity-description.crash-site-lab",
    { "entity-description.crash-site-building" },
}
lab.minable = common.minable
lab.researching_speed = 0.75

data:extend({ lab })
