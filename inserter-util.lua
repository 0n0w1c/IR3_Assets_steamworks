local base_connector_scale = 0.5

function make_inserter_connector(args)
    local name         = args.name or "inserter-01"
    local scale        = args.scale or base_connector_scale
    local base_path    = args.base_path or "__base__/graphics/entity/circuit-connector/"

    local offset_scale = scale / base_connector_scale

    local function s(x, y)
        return util.by_pixel(x * offset_scale, y * offset_scale)
    end

    local function sprite(file, w, h, shift_x, shift_y, extra)
        local t = {
            filename    = base_path .. file,
            frame_count = 4,
            height      = h,
            line_length = 4,
            priority    = "extra-high",
            flags       = { "low-object" },
            scale       = scale,
            shift       = s(shift_x, shift_y),
            width       = w
        }

        if extra then
            for k, v in pairs(extra) do
                t[k] = v
            end
        end

        return t
    end

    local prefix = "ccm-" .. name .. "-"

    return
    {
        connector_main            =
            sprite(prefix .. "base-sequence.png", 52, 40, 1.0, 2.5),

        connector_shadow          =
            sprite(prefix .. "base-shadow.png", 56, 36, 6.5, 7, { draw_as_shadow = true }),

        led_blue_off              =
            sprite(prefix .. "LED-B-off-sequence.png", 46, 26, -0.5, 4),

        led_blue                  =
            sprite(prefix .. "LED-B-on-sequence.png", 60, 42, -0.5, 4, { draw_as_glow = true }),

        led_green                 =
            sprite(prefix .. "LED-G-sequence.png", 54, 50, -2, 2.5, { draw_as_glow = true }),

        led_red                   =
            sprite(prefix .. "LED-R-sequence.png", 54, 50, -2, 2.5, { draw_as_glow = true }),

        wire_pins                 =
            sprite(prefix .. "wire-sequence.png", 62, 46, 3, -1),

        wire_pins_shadow          =
            sprite(prefix .. "wire-shadow.png", 64, 46, 12, 5.5, { draw_as_shadow = true }),

        wire_offset_hotfix        = s(0, 2),
        wire_shadow_offset_hotfix = s(0, 2),

        wire_offsets              =
        {
            { red = s(13, -10),     green = s(16, -4.5) },
            { red = s(7.5, -13),    green = s(13, -10) },
            { red = s(16.5, 1.5),   green = s(12.5, 6) },
            { red = s(-5.5, -12.5), green = s(-11, -11) }
        },

        wire_shadow_offsets       =
        {
            { red = s(21.5, -2.5), green = s(25, 3) },
            { red = s(15, -6.5),   green = s(21.5, -3) },
            { red = s(25, 8.5),    green = s(22, 13.5) },
            { red = s(4.5, -6),    green = s(-3, -3.5) }
        },

        light_offsets             =
        {
            -- when/if you use these, also feed through s(x, y):
            -- { rg = s(-9.5, -6.5), b = s(-11, -3) },
            -- ...
        }
    }
end

steam_inserter_connector_template = make_inserter_connector {
    name  = "inserter-01",
    scale = 0.33333, -- (0.5)
}

circuit_connector_definitions["steam-inserter"] = circuit_connector_definitions.create_vector
    (
        steam_inserter_connector_template,
        {
            { variation = 2, main_offset = util.by_pixel(0, 10),  shadow_offset = util.by_pixel(0, 10),  show_shadow = true },
            { variation = 3, main_offset = util.by_pixel(-7, 2),  shadow_offset = util.by_pixel(-7, 2),  show_shadow = true },
            --{ variation = 0, main_offset = util.by_pixel(-6, -6), shadow_offset = util.by_pixel(-6, -6), show_shadow = true },
            { variation = 1, main_offset = util.by_pixel(-3, -5), shadow_offset = util.by_pixel(-3, -5), show_shadow = true },
            { variation = 1, main_offset = util.by_pixel(4, 0),   shadow_offset = util.by_pixel(4, 0),   show_shadow = true }
        }
    )
