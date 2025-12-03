local base_connector_scale = 0.5

function make_inserter_connector(args)
    local inserter_name       = args.name or "inserter-01"
    local connector_scale     = args.scale or base_connector_scale
    local base_path           = args.base_path or "__base__/graphics/entity/circuit-connector/"

    local offset_scale_factor = connector_scale / base_connector_scale

    local function scaled_shift(pixel_x, pixel_y)
        return util.by_pixel(pixel_x * offset_scale_factor, pixel_y * offset_scale_factor)
    end

    local function make_sprite(file_name, width, height, shift_x, shift_y, extra)
        local sprite_definition = {
            filename    = base_path .. file_name,
            frame_count = 4,
            height      = height,
            line_length = 4,
            priority    = "extra-high",
            flags       = { "low-object" },
            scale       = connector_scale,
            shift       = scaled_shift(shift_x, shift_y),
            width       = width
        }

        if extra then
            for key, value in pairs(extra) do
                sprite_definition[key] = value
            end
        end

        return sprite_definition
    end

    local file_prefix = "ccm-" .. inserter_name .. "-"

    return {
        connector_main            =
            make_sprite(file_prefix .. "base-sequence.png", 52, 40, 1.0, 2.5),

        connector_shadow          =
            make_sprite(file_prefix .. "base-shadow.png", 56, 36, 6.5, 7, { draw_as_shadow = true }),

        led_blue_off              =
            make_sprite(file_prefix .. "LED-B-off-sequence.png", 46, 26, -0.5, 4),

        led_blue                  =
            make_sprite(file_prefix .. "LED-B-on-sequence.png", 60, 42, -0.5, 4, { draw_as_glow = true }),

        led_green                 =
            make_sprite(file_prefix .. "LED-G-sequence.png", 54, 50, -2, 2.5, { draw_as_glow = true }),

        led_red                   =
            make_sprite(file_prefix .. "LED-R-sequence.png", 54, 50, -2, 2.5, { draw_as_glow = true }),

        wire_pins                 =
            make_sprite(file_prefix .. "wire-sequence.png", 62, 46, 3, -1),

        wire_pins_shadow          =
            make_sprite(file_prefix .. "wire-shadow.png", 64, 46, 12, 5.5, { draw_as_shadow = true }),

        wire_offset_hotfix        = scaled_shift(0, 2),
        wire_shadow_offset_hotfix = scaled_shift(0, 2),

        wire_offsets              = {
            { red = scaled_shift(13, -10),     green = scaled_shift(16, -4.5) },
            { red = scaled_shift(7.5, -13),    green = scaled_shift(13, -10) },
            { red = scaled_shift(16.5, 1.5),   green = scaled_shift(12.5, 6) },
            { red = scaled_shift(-5.5, -12.5), green = scaled_shift(-11, -11) }
        },

        wire_shadow_offsets       = {
            { red = scaled_shift(21.5, -2.5), green = scaled_shift(25, 3) },
            { red = scaled_shift(15, -6.5),   green = scaled_shift(21.5, -3) },
            { red = scaled_shift(25, 8.5),    green = scaled_shift(22, 13.5) },
            { red = scaled_shift(4.5, -6),    green = scaled_shift(-3, -3.5) }
        },

        light_offsets             = {}
    }
end

steam_inserter_connector_template = make_inserter_connector {
    name  = "inserter-01",
    scale = 0.33333, -- uses base_connector_scale = 0.5 as reference
}

circuit_connector_definitions["steam-inserter"] =
    circuit_connector_definitions.create_vector(
        steam_inserter_connector_template,
        {
            { variation = 2, main_offset = util.by_pixel(0, 10),  shadow_offset = util.by_pixel(0, 10),  show_shadow = true },
            { variation = 3, main_offset = util.by_pixel(-7, 2),  shadow_offset = util.by_pixel(-7, 2),  show_shadow = true },
            { variation = 1, main_offset = util.by_pixel(-3, -5), shadow_offset = util.by_pixel(-3, -5), show_shadow = true },
            { variation = 1, main_offset = util.by_pixel(4, 0),   shadow_offset = util.by_pixel(4, 0),   show_shadow = true }
        }
    )
