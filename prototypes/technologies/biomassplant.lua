TECHNOLOGY {
    type = "technology",
    name = "biomassplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/biomassplant-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'thermal-mk01'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biomassplant-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/biomassplant-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk02','biomassplant-mk01'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biomassplant-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/biomassplant-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk03','biomassplant-mk02'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biomassplant-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/biomassplant-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk04','biomassplant-mk03'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}