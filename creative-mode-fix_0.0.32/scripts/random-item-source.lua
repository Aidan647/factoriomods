-- This file contains variables or functions that are related to the Random Item Source in this mod.
if not random_item_source then random_item_source = {} end

-- The position shift for item output for each direction.
local random_item_source_shift =
{
	-- The values are shifted from the original mod so surface.can_place_entity can work properly.
	[defines.direction.north] = {x1 = 0.3, y1 = 0.9, x2 = -0.3, y2 = 0.9, x0 = 0, y0 = 0.9},
	[defines.direction.east] = {x1 = -0.9, y1 = 0.3, x2 = -0.9, y2 = -0.3, x0 = -0.9, y0 = 0},
	[defines.direction.south] = {x1 = -0.3, y1 = -0.9, x2 = 0.3, y2 = -0.9, x0 = 0, y0 = -0.9},
	[defines.direction.west] = {x1 = 0.9, y1 = -0.3, x2 = 0.9, y2 = 0.3, x0 = 0.9, y0 = 0},
}

-- Picks the name of item to be generated according to the given array of circuit signals.
local function pick_item_from_signals(signals)
	if signals == nil then
		return nil
	end
	
	-- Get total count.
	local total_count = 0
	local is_all_non_items = true
	for _, signal_data in pairs(signals) do
		total_count = total_count + signal_data.count
		is_all_non_items = is_all_non_items and signal_data.signal.type ~= "item"
	end
	
	if is_all_non_items or total_count <= 0 then
		-- All signals are non items. No item will be picked.
		return nil
	end
	
	-- Pick signal by count.
	total_count = util.random(1, total_count)
	for _, signal_data in pairs(signals) do
		total_count = total_count - signal_data.count
		if total_count <= 0 then
			local signal = signal_data.signal
			if signal.type == "item" then
				return signal.name
			end
			return nil
		end
	end
end

-- Processes the random_item_source_data table in global.
function random_item_source.tick()
	-- Loop through the table of matter-source data to output items.
	for index, random_item_source_data in ipairs(global.creative_mode.random_item_source_data) do
		-- Get the actual random-item-source entity.
		local random_item_source = random_item_source_data.entity
		-- Work only if the entity is valid.
		if random_item_source.valid then
			-- Check if it is active and also not marked for deconstruction.
			if random_item_source.active and not random_item_source.to_be_deconstructed(random_item_source.force) then
				-- Give the random-item-source free energy.
				random_item_source.energy = 100000
				-- Check if it is enabled according to its circuit network state and logistic network state.
				if util.is_inserter_enabled(random_item_source) then
					local controller = random_item_source.get_control_behavior()
					if controller then
						local green_network = controller.get_circuit_network(defines.wire_type.green)
						local red_network = controller.get_circuit_network(defines.wire_type.red)
					
						-- Get the left and right item names.
						local slot1 = nil
						if green_network then
							slot1 = pick_item_from_signals(green_network.signals)
						end
						local slot2 = nil
						if red_network then
							slot2 = pick_item_from_signals(red_network.signals)
						end
											
						-- Get the random-item-source's surface, position and shift for output, so we can drop items accordingly.
						local surf = random_item_source.surface
						local pos = random_item_source.position
						local dir = random_item_source.direction
						local shift = random_item_source_shift[dir]
						local opposite_dir = util.oppositedirection(dir)
						-- Output for slot1.
						if slot1 == nil then
							random_item_source_data.slot1_inserted_players = nil
							random_item_source_data.slot1_last_item_position_on_belt = nil
						else
							item_providers_util.output_or_remove_item(surf, pos, shift.x1, shift.y1, opposite_dir, slot1, output_or_remove_item_operation_mode.output_mode, 1, random_item_source_data)
						end
						-- Output for slot2.
						if slot2 == nil then
							random_item_source_data.slot2_inserted_players = nil
							random_item_source_data.slot2_last_item_position_on_belt = nil
						else
							item_providers_util.output_or_remove_item(surf, pos, shift.x2, shift.y2, opposite_dir, slot2, output_or_remove_item_operation_mode.output_mode, 2, random_item_source_data)
						end
					end
				end
			end
		else
			-- Remove invalid entity.
			table.remove(global.creative_mode.random_item_source_data, index)
		end
	end
end

-- Returns the entity data for the given random item source entity.
function random_item_source.get_data_for_entity(entity)
	for _, data in ipairs(global.creative_mode.random_item_source_data) do
		if data.entity == entity then
			return data
		end
	end
	return nil
end

-- Copies the additional configurations from the source entity to the destination entity.
function random_item_source.on_entity_copied_pasted(source, destination)
	local source_data = random_item_source.get_data_for_entity(source)
	local destination_data = random_item_source.get_data_for_entity(destination)
	if not source_data then
		return
	end
	if not destination_data then
		return
	end
	destination_data.can_insert_to_vehicle = source_data.can_insert_to_vehicle
	destination_data.can_insert_to_player = source_data.can_insert_to_player
	destination_data.insert_only_once_to_player = source_data.insert_only_once_to_player
	destination_data.insert_to_player_amount = source_data.insert_to_player_amount
	destination_data.insert_to_player_by_stack = source_data.insert_to_player_by_stack
	destination_data.can_drop_on_ground = source_data.can_drop_on_ground
end