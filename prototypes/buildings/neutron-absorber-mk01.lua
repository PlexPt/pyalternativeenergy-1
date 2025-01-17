RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"electronic-circuit", 20},
        {"iron-gear-wheel", 150},
        {"nbfe-alloy", 30},
        {"concrete", 50},
        {"steel-plate", 100},
        {"aluminium-plate", 50},
        {"nexelit-plate", 50},
        {"niobium-pipe", 10},
        {"mechanical-parts-01", 2},
        {'intermetallics', 20},
    },
    results = {
        {"neutron-absorber-mk01", 1}
    }
}:add_unlock("nuclear-power")

ITEM {
    type = "item",
    name = "neutron-absorber-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "a",
    place_result = "neutron-absorber-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-absorber-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-absorber-mk01"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"neutron-absorber"},
    crafting_speed = 1,
    energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = 0,
        destroy_non_fuel_fluid = false,
        fluid_box =
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_connections =
          {
            --{type = "input-output", position = {0, 6}},
            {type = "input-output", position = {0, -2}}
          },
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
          pipe_covers = DATA.Pipes.covers(false, true, true, true),
          production_type = "input-output",
          filter = "boric-acid"
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = (2/60),
        --maximum_temperature = 2500,
      },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/off.png",
                width = 224,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(8, -56),
                scale = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/mask.png",
                width = 224,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(8, -56),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                scale = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/sh.png",
                width = 288,
                height = 192,
                frame_count = 1,
                shift = util.by_pixel(24, 0),
                scale = 0.5,
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(6, -87),
            west_position = util.by_pixel(6, -87),
            south_position = util.by_pixel(6, -87),
            east_position = util.by_pixel(6, -87),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/l.png",
                frame_count = 15,
                line_length = 5,
                width = 224,
                height = 288,
                animation_speed = 0.3,
                run_mode = "forward-then-backward",
                draw_as_glow = true,
                scale = 0.5,
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
            pipe_connections = {{type = "input", position = {0.0, 2.0}}}
        },
        --[[
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -2.0}}}
        },
        ]]--
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    fast_replaceable_group = "neutron-absorber"
  }
