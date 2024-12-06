local crash_site_parts = {
    {
        name = "crash-site-assembling-machine-1",
        angle_deviation = 0.3,
        max_distance = 20,
        min_separation = 5,
        fire_count = 1,
        force = "player",
    },
    {
        name = "crash-site-assembling-machine-2",
        angle_deviation = 0.3,
        max_distance = 20,
        min_separation = 5,
        fire_count = 1,
        force = "player",
    },
    {
        name = "crash-site-chest-1",
        angle_deviation = 0.1,
        max_distance = 20,
        min_separation = 3,
        fire_count = 1,
        force = "player",
    },
    {
        name = "crash-site-chest-2",
        angle_deviation = 0.1,
        max_distance = 20,
        min_separation = 2,
        fire_count = 1,
        force = "player",
    },
    {
        name = "crash-site-energy-interface",
        angle_deviation = 0.2,
        max_distance = 25,
        min_separation = 10,
        fire_count = 1,
        explosion_count = 1,
        force = "player",
    },
    {
        name = "crash-site-lab",
        angle_deviation = 0.05,
        max_distance = 30,
        min_separation = 10,
        fire_count = 2,
        explosion_count = 1,
        force = "player",
    },
}

local function init()
    if
        remote.interfaces["freeplay"]
        and remote.interfaces["freeplay"].get_disable_crashsite
        and not remote.call("freeplay", "get_disable_crashsite")
        and not remote.call("freeplay", "get_init_ran")
    then
        local ship_parts = remote.call("freeplay", "get_ship_parts")
        for _, part in pairs(crash_site_parts) do
            ship_parts[#ship_parts + 1] = part
        end
        remote.call("freeplay", "set_ship_parts", ship_parts)
    end
end

script.on_init(init)
