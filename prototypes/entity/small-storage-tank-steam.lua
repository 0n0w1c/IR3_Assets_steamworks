data:extend({
    {
        type                      = "storage-tank",
        name                      = "small-storage-tank-steam",
        corpse                    = "small-remnants",
        circuit_connector         = circuit_connector_definitions.create_vector(universal_connector_template,
            {
                { variation = 27, main_offset = util.by_pixel(10.375, -19.625), shadow_offset = util.by_pixel(10.375, -19.625), show_shadow = true },
                { variation = 27, main_offset = util.by_pixel(10.375, -19.625), shadow_offset = util.by_pixel(10.375, -19.625), show_shadow = true },
                { variation = 27, main_offset = util.by_pixel(10.375, -19.625), shadow_offset = util.by_pixel(10.375, -19.625), show_shadow = true },
                { variation = 27, main_offset = util.by_pixel(10.375, -19.625), shadow_offset = util.by_pixel(10.375, -19.625), show_shadow = true }
            }
        ),
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        damaged_trigger_effect    = {
            {
                damage_type_filters = {
                    "fire",
                    "impact"
                },
                frame_speed = 1,
                frame_speed_deviation = 0.1,
                initial_height = 0.5,
                initial_vertical_speed = 0.07,
                initial_vertical_speed_deviation = 0.1,
                offset_deviation = {
                    { -0.5, -0.5 },
                    { 0.5,  0.5 }
                },
                particle_name = "iron-particle",
                probability = 1,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        collision_box             = {
            { -0.49, -0.49 },
            { 0.49,  0.49 }
        },
        drawing_box               = {
            { -0.5, -1.5 },
            { 0.5,  0.5 }
        },
        dying_explosion           = "small-storage-tank-steam-explosion",
        fast_replaceable_group    = "small-storage-tank",
        flags                     = {
            "placeable-player",
            "player-creation"
        },
        flow_length_in_ticks      = 360,
        fluid_box                 = {
            volume                = 2500,
            pipe_connections      = {
                {
                    direction = defines.direction.north,
                    position = { 0, 0 },
                    connection_category = "steam",
                },
                {
                    direction = defines.direction.south,
                    position = { 0, 0 },
                    connection_category = "steam",
                },
            },
            filter                = "steam",
            pipe_covers           = PIPE_COVERS_STEAM,
            secondary_draw_orders = { north = -1 },
        },
        icon                      = "__IndustrialRevolution3Assets1__/graphics/icons/64/small-tank-steam.png",
        icon_mipmaps              = 4,
        icon_size                 = 64,
        max_health                = 100,
        minable                   = { mining_time = 0.5, result = "small-storage-tank-steam" },
        pictures                  = {
            flow_sprite = {
                filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                height = 20,
                priority = "extra-high",
                width = 160
            },
            fluid_background = {
                filename =
                "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/fluid-background-narrow.png",
                height = 15,
                priority = "extra-high",
                shift = { 0, 0 },
                width = 16,
                x = 0,
                y = 0
            },
            gas_flow = {
                animation_speed = 0.25,
                filename = "__base__/graphics/entity/pipe/steam.png",
                frame_count = 60,
                height = 30,
                line_length = 10,
                priority = "extra-high",
                scale = 0.5,
                width = 48
            },
            picture = {
                sheets = {
                    {
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/small-tank-shadow.png",
                        frames = 2,
                        height = 128,
                        priority = "extra-high",
                        scale = 0.5,
                        shift = { 0.75, 0 },
                        width = 224,
                        x = 0,
                        y = 128
                    },
                    {
                        filename =
                        "__IndustrialRevolution3Assets3__/graphics/entities/machines/fluids/small-tank-base.png",
                        frames = 2,
                        height = 160,
                        priority = "extra-high",
                        scale = 0.5,
                        shift = { 0, -0.25 },
                        width = 128,
                        x = 0,
                        y = 160
                    }
                }
            },
            window_background = {
                filename = "__base__/graphics/entity/storage-tank/window-background.png",
                height = 48,
                priority = "extra-high",
                scale = 0.5,
                width = 34
            }
        },
        scale_info_icons          = false,
        selection_box             = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        two_direction_only        = true,
        vehicle_impact_sound      = {
            game_controller_vibration_data = {
                duration = 150,
                low_frequency_vibration_intensity = 0.9
            },
            switch_vibration_data = {
                filename = "__base__/sound/car-metal-impact.bnvib"
            },
            variations = {
                {
                    filename = "__base__/sound/car-metal-impact-2.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-3.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-4.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-5.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-6.ogg",
                    volume = 0.5
                }
            }
        },
        window_bounding_box       = {
            { -0.2, -0.65 },
            { 0.2,  -0.2 }
        }
    }
})
