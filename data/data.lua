-- data.lua

-- Infinite ores definition
data:extend({
    {
        type = "resource",
        name = "infinite-iron-ore",
        icon = "__base__/graphics/icons/iron-ore.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 1.5,
            result = "iron-ore",
            required_fluid = nil  -- Ensure no required fluid unless intended
        },
        stages = {
            sheet = {
                filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.5, g=0.5, b=0.5}
    },
    {
        type = "resource",
        name = "infinite-copper-ore",
        icon = "__base__/graphics/icons/copper-ore.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 1.5,
            result = "copper-ore",
            required_fluid = nil
        },
        stages = {
            sheet = {
                filename = "__base__/graphics/entity/copper-ore/copper-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=1.0, g=0.6, b=0.2}
    },
    {
        type = "resource",
        name = "infinite-coal",
        icon = "__base__/graphics/icons/coal.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 1.5,
            result = "coal",
            required_fluid = nil
        },
        stages = {
            sheet = {
                filename = "__base__/graphics/entity/coal/coal.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.0, g=0.0, b=0.0}
    },
    {
        type = "resource",
        name = "infinite-stone",
        icon = "__base__/graphics/icons/stone.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 1.5,
            result = "stone",
            required_fluid = nil
        },
        stages = {
            sheet = {
                filename = "__base__/graphics/entity/stone/stone.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.7, g=0.7, b=0.7}
    },
    {
        type = "resource",
        name = "infinite-uranium-ore",
        icon = "__base__/graphics/icons/uranium-ore.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 2.5,
            result = "uranium-ore",
            required_fluid = "sulfuric-acid",
            fluid_amount = 10
        },
        stages = {
            sheet = {
                filename = "__base__/graphics/entity/uranium-ore/uranium-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.0, g=1.0, b=0.0}
    },
    {
        type = "resource",
        name = "infinite-tungsten-ore",
        icon = "__space-age__/graphics/icons/tungsten-ore.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 3.0,
            result = "tungsten-ore",
            required_fluid = nil
        },
        stages = {
            sheet = {
                filename = "__space-age__/graphics/entity/tungsten-ore/tungsten-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.4, g=0.4, b=0.7}
    },
    {
        type = "resource",
        name = "infinite-calcite",
        icon = "__space-age__/graphics/icons/calcite.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 1.6,
            result = "calcite",
            required_fluid = nil
        },
        stages = {
            sheet = {
                filename = "__space-age__/graphics/entity/calcite/calcite.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.9, g=0.9, b=0.5}
    },
    {
        type = "resource",
        name = "infinite-scrap",
        icon = "__space-age__/graphics/icons/scrap.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 100,
        normal = 200,
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 1.5,
            result = "scrap",
            required_fluid = nil
        },
        stages = {
            sheet = {
                filename = "__space-age__/graphics/entity/scrap/scrap.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8
            }
        },
        stage_counts = {0, 1, 2, 3, 4, 5, 6, 7},
        map_color = {r=0.3, g=0.3, b=0.3}
    }
})
