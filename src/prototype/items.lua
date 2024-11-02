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

data.raw["item"]["computer"] = nil
data.raw["item"]["small-plane"] = nil
data.raw["item"]["crash-site-assembling-machine-1-broken"] = nil
data.raw["item"]["crash-site-assembling-machine-1-repaired"] = nil
data.raw["item"]["crash-site-assembling-machine-2-broken"] = nil
data.raw["item"]["crash-site-assembling-machine-2-repaired"] = nil
data.raw["item"]["crash-site-electric-pole"] = nil
data.raw["item"]["crash-site-generator"] = nil
data.raw["item"]["crash-site-lab-broken"] = nil
data.raw["item"]["crash-site-lab-repaired"] = nil

data:extend({ assembler_1, assembler_2, lab, generator })
