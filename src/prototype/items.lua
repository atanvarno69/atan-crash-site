local assembler_1 = table.deepcopy(data.raw["item"]["crash-site-assembling-machine-1-repaired"])
local assembler_2 = table.deepcopy(data.raw["item"]["crash-site-assembling-machine-2-repaired"])
local lab = table.deepcopy(data.raw["item"]["crash-site-lab-repaired"])
local generator = table.deepcopy(data.raw["item"]["crash-site-generator"])

assembler_1.name = "crash-site-assembling-machine-1"
assembler_1.place_result = "crash-site-assembling-machine-1"
assembler_2.name = "crash-site-assembling-machine-2"
assembler_2.place_result = "crash-site-assembling-machine-2"
lab.name = "crash-site-lab"
lab.place_result = "crash-site-lab"
generator.name = "crash-site-energy-interface"
generator.place_result = "crash-site-energy-interface"

data:extend({ assembler_1, assembler_2, lab, generator })
