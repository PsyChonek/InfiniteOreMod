script.on_event(defines.events.on_chunk_generated, function(event)
    local surface = event.surface
    local area = event.area

    -- Find large ore patches in the newly generated chunk
    local ore_entities = surface.find_entities_filtered{
        area = area,
        name = {"iron-ore", "copper-ore", "coal"} -- You can expand this list as needed
    }

    for _, ore in pairs(ore_entities) do
        if math.random() < 0.05 then -- Add a small probability to insert the infinite ore
            -- Create the small infinite ore in the same position
            surface.create_entity{
                name = "infinite-ore",
                position = ore.position,
                amount = 1
            }
        end
    end
end)
