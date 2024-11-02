local M = {}

M.flags = { "placeable-player", "player-creation", "not-blueprintable", "not-rotatable", "not-upgradable" }

M.minable = {
    mining_time = 4,
    results = {
        { type = "item", name = "iron-plate", amount_min = 5, amount_max = 9, probability = 1 },
        { type = "item", name = "iron-gear-wheel", amount_min = 3, amount_max = 5, probability = 0.75 },
        { type = "item", name = "electronic-circuit", amount_min = 1, amount_max = 5, probability = 0.75 },
    },
    mining_particle = "shell-particle",
}

return M
