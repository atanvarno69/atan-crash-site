local common = require("prototype.common")

for _, container in pairs({ "crash-site-chest-1", "crash-site-chest-2" }) do
    data.raw["container"][container].flags = common.flags
    data.raw["container"][container].inventory_size = 8
    data.raw["container"][container].minable = {
        mining_time = 1,
        results = {
            { type = "item", name = "iron-plate", amount = 2 },
        },
    }
end
