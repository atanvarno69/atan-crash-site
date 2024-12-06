local common = require("prototype.common")

local assembler_1 = table.deepcopy(data.raw["assembling-machine"]["crash-site-assembling-machine-1-repaired"])
local assembler_2 = table.deepcopy(data.raw["assembling-machine"]["crash-site-assembling-machine-2-repaired"])

for _, assembler in pairs({ assembler_1, assembler_2 }) do
    assembler.crafting_categories = { "crafting", "basic-crafting" }
    assembler.crafting_speed = 0.33
    assembler.flags = common.flags
    assembler.localised_description = {
        "entity-description.crash-site-assembling-machine",
        { "entity-description.crash-site-building" },
    }
    assembler.localised_name = { "entity-name.crash-site-assembling-machine" }
    assembler.minable = common.mineable
end
assembler_1.name = "crash-site-assembling-machine-1"
assembler_2.name = "crash-site-assembling-machine-2"

data:extend({ assembler_1, assembler_2 })
