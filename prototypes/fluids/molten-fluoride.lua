
FLUID {
    type = "fluid",
    name = "molten-fluoride-thorium",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/molten-fluoride-thorium.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.705, g = 0.717, b = 0.227},
    flow_color = {r = 0.705, g = 0.717, b = 0.227},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}

FLUID {
    type = "fluid",
    name = "molten-fluoride-thorium-pa233",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/molten-fluoride-thorium-pa233.png",
	icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.705, g = 0.717, b = 0.227},
    flow_color = {r = 0.705, g = 0.717, b = 0.227},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}

FLUID {
    type = "fluid",
    name = "molten-fluoride-u233",
    icon = "__pyalternativeenergygraphics__/graphics/icons/nuclear-fluids/molten-fluoride-u233.png",
	icon_size = 64,
    heat_capacity = "0.01KJ",
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.705, g = 0.717, b = 0.227},
    flow_color = {r = 0.705, g = 0.717, b = 0.227},
    max_temperature = 10000,
    --gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alternativeenergy-fluids",
    order = "c"
}
