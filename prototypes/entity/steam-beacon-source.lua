local beacon = data.raw["beacon"]["steam-beacon"]
if not beacon then return end

local source_energy_source = table.deepcopy(beacon.energy_source)
if source_energy_source.type ~= "fluid" then
    error("steam-beacon must still have a fluid energy source before creating steam-beacon-source")
end

local source_fluid_box = source_energy_source["fluid_box"]
if source_fluid_box then
    source_fluid_box.pipe_connections = {
        {
            direction = defines.direction.north,
            position = { 0, -1 },
            flow_direction = "input-output",
            connection_category = "steam",
        },
        {
            direction = defines.direction.east,
            position = { 1, 0 },
            flow_direction = "input-output",
            connection_category = "steam",
        },
        {
            direction = defines.direction.south,
            position = { 0, 1 },
            flow_direction = "input-output",
            connection_category = "steam",
        },
        {
            direction = defines.direction.west,
            position = { -1, 0 },
            flow_direction = "input-output",
            connection_category = "steam",
        },
    }
end

beacon.energy_source = { type = "void" }

beacon.profile = beacon.profile or {
    1, 0.7071, 0.5773, 0.5, 0.4472, 0.4082, 0.3779, 0.3535, 0.3333, 0.3162,
    0.3015, 0.2886, 0.2773, 0.2672, 0.2581, 0.25, 0.2425, 0.2357, 0.2294,
    0.2236, 0.2182, 0.2132, 0.2085, 0.2041, 0.2, 0.1961, 0.1924, 0.1889,
    0.1856, 0.1825, 0.1796, 0.1767, 0.174, 0.1714, 0.169, 0.1666, 0.1643,
    0.1622, 0.1601, 0.1581, 0.1561, 0.1543, 0.1524, 0.1507, 0.149, 0.1474,
    0.1458, 0.1443, 0.1428, 0.1414, 0.14, 0.1386, 0.1373, 0.136, 0.1348,
    0.1336, 0.1324, 0.1313, 0.1301, 0.129, 0.128, 0.127, 0.1259, 0.125,
    0.124, 0.123, 0.1221, 0.1212, 0.1203, 0.1195, 0.1186, 0.1178, 0.117,
    0.1162, 0.1154, 0.1147, 0.1139, 0.1132, 0.1125, 0.1118, 0.1111,
    0.1104, 0.1097, 0.1091, 0.1084, 0.1078, 0.1072, 0.1066, 0.1059,
    0.1054, 0.1048, 0.1042, 0.1036, 0.1031, 0.1025, 0.102, 0.1015,
    0.101, 0.1005, 0.1
}

local hidden_flags = {
    "placeable-off-grid",
    "not-repairable",
    "not-on-map",
    "not-blueprintable",
    "not-deconstructable",
    "no-copy-paste",
    "not-upgradable",
    "placeable-neutral",
    "no-automated-item-insertion",
    "no-automated-item-removal"
}

data:extend({
    {
        type = "recipe-category",
        name = "steamworks-steam-beacon-source",
        hidden = true,
        hidden_in_factoriopedia = true,
    },
    {
        type = "recipe",
        name = "steamworks-steam-beacon-source-recipe",
        categories = { "steamworks-steam-beacon-source" },
        icon = util.empty_icon().icon,
        enabled = true,
        energy_required = 1,
        ingredients = {},
        results = {},
        allow_productivity = false,
        hidden = true,
        hidden_in_factoriopedia = true,
    },
    {
        type = "item",
        name = "steamworks-steam-beacon-internal-item",
        icon = util.empty_icon().icon,
        stack_size = 1,
        hidden = true,
        hidden_in_factoriopedia = true,
    },
    {
        type = "recipe",
        name = "steamworks-steam-beacon-internal-recipe",
        categories = { "steamworks-steam-beacon-source" },
        icon = util.empty_icon().icon,
        enabled = true,
        energy_required = 1,
        ingredients = {
            {
                type = "item",
                name = "steamworks-steam-beacon-internal-item",
                amount = 1,
                ignored_by_stats = 1,
            },
        },
        results = {},
        allow_productivity = false,
        hidden = true,
        hidden_in_factoriopedia = true,
    },
    {
        type = "assembling-machine",
        name = "steam-beacon-source",
        localised_name = { "entity-name.steam-beacon" },
        localised_description = { "entity-description.steam-beacon" },
        icon = beacon.icon,
        icon_size = beacon.icon_size,
        icons = beacon.icons,
        flags = hidden_flags,
        allow_copy_paste = false,
        selectable_in_game = false,
        hidden = true,
        hidden_in_factoriopedia = true,
        create_corpse_on_death = false,
        collision_box = beacon.collision_box,
        collision_mask = { layers = {} },
        selection_box = beacon.selection_box,
        selection_priority = (beacon.selection_priority or 50) - 1,
        energy_usage = beacon.energy_usage,
        energy_source = source_energy_source,
        crafting_categories = { "steamworks-steam-beacon-source" },
        fixed_recipe = "steamworks-steam-beacon-source-recipe",
        crafting_speed = 1,
        module_slots = beacon.module_slots,
        allowed_effects = beacon.allowed_effects or { "consumption", "pollution", "speed", "productivity", "quality" },
        effect_receiver = {
            uses_beacon_effects = false,
            uses_module_effects = true,
            uses_surface_effects = false,
        },
        quality_affects_energy_usage = true,
        icon_draw_specification = { scale = 0, scale_for_many = 0 },
        icons_positioning = { { inventory_index = defines.inventory.crafter_modules, scale = 0 } },
    },
    {
        type = "assembling-machine",
        name = "steamworks-steam-beacon-manager",
        icon = util.empty_icon().icon,
        flags = hidden_flags,
        allow_copy_paste = false,
        selectable_in_game = false,
        hidden = true,
        hidden_in_factoriopedia = true,
        create_corpse_on_death = false,
        collision_mask = { layers = {} },
        energy_usage = "1W",
        energy_source = { type = "void" },
        crafting_categories = { "steamworks-steam-beacon-source" },
        fixed_recipe = "steamworks-steam-beacon-internal-recipe",
        crafting_speed = 60,
    },
    {
        type = "proxy-container",
        name = "steamworks-steam-beacon-monitor",
        icon = util.empty_icon().icon,
        draw_inventory_content = false,
        collision_mask = { layers = {} },
        flags = {
            "not-rotatable",
            "placeable-neutral",
            "placeable-off-grid",
            "not-repairable",
            "not-on-map",
            "not-deconstructable",
            "not-blueprintable",
            "hide-alt-info",
            "not-upgradable",
        },
        allow_copy_paste = false,
        selectable_in_game = false,
        hidden = true,
        hidden_in_factoriopedia = true,
    },
    {
        type = "constant-combinator",
        name = "steamworks-steam-beacon-mimic",
        icon = util.empty_icon().icon,
        collision_mask = { layers = {} },
        activity_led_light_offsets = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
        circuit_wire_connection_points = {
            { wire = {}, shadow = {} },
            { wire = {}, shadow = {} },
            { wire = {}, shadow = {} },
            { wire = {}, shadow = {} },
        },
        flags = {
            "not-rotatable",
            "placeable-neutral",
            "placeable-off-grid",
            "not-repairable",
            "not-on-map",
            "not-deconstructable",
            "not-blueprintable",
            "hide-alt-info",
            "not-upgradable",
        },
        allow_copy_paste = false,
        selectable_in_game = false,
        hidden = true,
        hidden_in_factoriopedia = true,
    },
})
