-- control.lua

script.on_event(defines.events.on_chunk_generated, function(event)
    local surface = event.surface
    local area = event.area

    -- List of ores to add to the world
    local ores = {
        "infinite-iron-ore",
        "infinite-copper-ore",
        "infinite-coal",
        "infinite-stone",
        "infinite-uranium-ore",
        "infinite-tungsten-ore",
        "infinite-calcite",
        "infinite-scrap"
    }

    -- Find normal deposits and add a small, connected infinite ore patch within them
    local normal_deposits = surface.find_entities_filtered{
        area = area,
        type = "resource",
        name = { "iron-ore", "copper-ore", "coal", "stone", "uranium-ore", "tungsten-ore", "calcite", "scrap" }
    }

    for _, deposit in pairs(normal_deposits) do
        local infinite_ore_name = "infinite-" .. deposit.name
        if table.contains(ores, infinite_ore_name) then
            -- Determine maximum number of tiles for infinite ore (10% of deposit)
            local patch_area = surface.count_entities_filtered{
                area = {
                    {deposit.position.x - 3, deposit.position.y - 3},
                    {deposit.position.x + 3, deposit.position.y + 3}
                },
                type = "resource",
                name = deposit.name
            }
            local max_infinite_tiles = math.ceil(patch_area * 0.1)
            local tiles_added = 0

            -- Start creating the connected patch with an initial tile
            local initial_position = deposit.position
            local positions_to_expand = {initial_position}
            local explored_positions = {}

            while #positions_to_expand > 0 and tiles_added < max_infinite_tiles do
                local current_position = table.remove(positions_to_expand)
                local position_key = current_position.x .. "," .. current_position.y

                if not explored_positions[position_key] then
                    if surface.can_place_entity{name = infinite_ore_name, position = current_position} then
                        local created_entity = surface.create_entity{
                            name = infinite_ore_name,
                            position = current_position,
                            amount = math.random(500, 1500),  -- Adjust as necessary for resource balance
                            force = deposit.force,  -- Ensure the infinite ore entity inherits the force of the original deposit
                            raise_built = false
                        }
                        -- Ensure entity was created successfully and is marked minable
                        if created_entity and created_entity.valid then
                            created_entity.minable = true
                        end
                        tiles_added = tiles_added + 1
                    end

                    explored_positions[position_key] = true

                    -- Add neighboring positions for expansion
                    local neighbors = {
                        {x = current_position.x + 1, y = current_position.y},
                        {x = current_position.x - 1, y = current_position.y},
                        {x = current_position.x, y = current_position.y + 1},
                        {x = current_position.x, y = current_position.y - 1}
                    }

                    for _, neighbor in pairs(neighbors) do
                        table.insert(positions_to_expand, neighbor)
                    end
                end
            end
        end
    end
end)

-- Helper function to check if table contains a value
function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end