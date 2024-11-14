data:extend({
    {
        type = "resource",
        name = "infinite-ore",
        icon = "__base__/graphics/icons/iron-ore.png",
        flags = {"placeable-neutral"},
        category = "basic-solid",
        infinite = true,
        minimum = 500, -- Minimum yield (set to a small value if you want it to feel like a tiny deposit)
        normal = 1000, -- Normal yield value
        resource_patch_search_radius = 12,
        minable = {
            mining_time = 2,
            result = "iron-ore"
        },
        stages = {
            sheet = {
                filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
                priority = "extra-high",
                size = {64, 64},
                frame_count = 8,
                variation_count = 8
            }
        },
        map_color = {r=0.5, g=0.5, b=0.5}
    }
})
