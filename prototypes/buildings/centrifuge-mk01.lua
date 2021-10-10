RECIPE {
    type = "recipe",
    name = "centrifuge-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"electric-mining-drill", 2},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 100},
        {"aluminium-plate", 20},
        {"duralumin", 50},
        {"engine-unit", 2},
    },
    results = {
        {"centrifuge-mk01", 1}
    }
}:add_unlock("machines-mk01")

ITEM {
    type = "item",
    name = "centrifuge-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/centrifuge-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "centrifuge-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "centrifuge-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/centrifuge-mk01.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "centrifuge-mk01"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed"},
    crafting_categories = {"centrifuging"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 4
    },
    energy_usage = "500kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/bottom.png",
                width = 224,
                height = 32,
                repeat_count = 100,
                frame_count = 1,
                shift = util.by_pixel(0, -0),
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, -64),
            west_position = util.by_pixel(0, -64),
            south_position = util.by_pixel(0, -64),
            east_position = util.by_pixel(0, -64),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/centrifuge/blink.png",
                frame_count = 100,
                line_length = 25,
                width = 64,
                height = 32,
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -4.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound = { filename = "__pyalternativeenergygraphics__/sounds/centrifuge.ogg", volume = 0.5 },
      apparent_volume = 0.5
    },
  }
