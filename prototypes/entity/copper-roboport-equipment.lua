data:extend({
    {
        type = "roboport-equipment",
        name = "copper-roboport-equipment",

        burner = {
            type = "burner",
            fuel_categories = { "steam-cell" },
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
            emissions_per_minute = { pollution = 0 },
        },

        energy_source = {
            type = "electric",
            buffer_capacity = "7.2MJ",
            input_flow_limit = "0kW",
            usage_priority = "secondary-input"
        },

        power = "20kW",

        categories = { "armor" },
        charge_approach_distance = 2.6,
        charging_distance = 1.6,
        charging_energy = "600kW",
        charging_station_count = 2,
        charging_station_shift = { 0, 0.5 },
        charging_threshold_distance = 5,
        construction_radius = 7.5,

        recharging_animation = {
            filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
            priority = "high",
            width = 50,
            height = 50,
            frame_count = 16,
            animation_speed = 0.5,
            scale = 1
        },

        recharging_light = { intensity = 0.4, size = 5 },
        robot_limit = 5,
        robots_shrink_when_entering_and_exiting = true,

        shape = {
            type = "full",
            width = 2,
            height = 2
        },

        spawn_and_station_height = 0.4,

        sprite = {
            filename = "__IndustrialRevolution3Assets1__/graphics/icons/128/copper-personal-roboport.png",
            priority = "medium",
            width = 128,
            height = 128,
            mipmap_count = 2,
            flags = { "gui" }
        },

        stationing_offset = { 0, -0.6 },
        take_result = "copper-roboport-equipment",
    }
})
