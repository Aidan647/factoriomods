require("script.furnace")
require("script.assembler")
local ls_pipe1 = ezlib.entity.get.list('pipe')
local ls_pipe2 = ezlib.entity.get.list('pipe-to-ground')
for x,y in ipairs(ls_pipe1) do	
	data.raw["pipe"][y].collision_mask = {"object-layer"}
end
for x,y in ipairs(ls_pipe2) do	
	data.raw["pipe-to-ground"][y].collision_mask = {"object-layer"}
end
if data.raw.item["express-transport-belt"].subgroup ~= "belt" then
	if data.raw.item["express-transport-belt"].subgroup ~= data.raw.item["fast-transport-belt"].subgroup then
	log("3423423")
			data:extend({
			{
				type	= "item-subgroup",
				name	= data.raw.item["express-transport-belt"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["express-transport-belt"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["express-transport-belt"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["stack-inserter"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["stack-inserter"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["stack-inserter"].subgroup].group,
			},
			
			
		})
		data.raw.item["transport_belt_X100"].subgroup 			= data.raw.item["express-transport-belt"].subgroup .. "X100"
		data.raw.item["transport_ground_X100"].subgroup			= data.raw.item["express-transport-belt"].subgroup .. "X100"
		data.raw.item["transport_ground_X100_chanal1"].subgroup	= data.raw.item["express-transport-belt"].subgroup .. "X100"
		data.raw.item["splitter_X100"].subgroup 				= data.raw.item["express-transport-belt"].subgroup .. "X100"
		data.raw.item["loader_X100"].subgroup					= data.raw.item["express-transport-belt"].subgroup  .. "X100"
		data.raw.item["X100_pipe-ground"].subgroup				= data.raw.item["pipe"].subgroup
		data.raw.item["X100_pipe"].subgroup						= data.raw.item["pipe"].subgroup
		data.raw.item["X100-inserter"].subgroup					= data.raw.item["stack-inserter"].subgroup .. "X100"
		data.raw.item["X100-long-inserter"].subgroup 			= data.raw.item["stack-inserter"].subgroup .. "X100"
		data.raw.item["X100-filter-inserter"].subgroup 			= data.raw.item["stack-inserter"].subgroup .. "X100"
		data.raw.item["X100-long-filter-inserter"].subgroup 	= data.raw.item["stack-inserter"].subgroup .. "X100"

	elseif data.raw.item["express-transport-belt"].subgroup == data.raw.item["fast-transport-belt"].subgroup then
	log("999423423")
		data.raw.item["transport_belt_X100"].subgroup 			= data.raw.item["express-transport-belt"].subgroup
		data.raw.item["transport_ground_X100"].subgroup			= data.raw.item["express-underground-belt"].subgrou
		data.raw.item["transport_ground_X100_chanal1"].subgroup	= data.raw.item["express-underground-belt"].subgroup
		data.raw.item["X100_pipe-ground"].subgroup				= data.raw.item["pipe-to-ground"].subgroup 
		data.raw.item["X100_pipe"].subgroup						= data.raw.item["pipe"].subgroup
		data.raw.item["loader_X100"].subgroup					= data.raw.item["express-loader"].subgroup 
		data.raw.item["X100-inserter"].subgroup					= data.raw.item["stack-inserter"].subgroup
		data.raw.item["X100-long-inserter"].subgroup 			= data.raw.item["long-handed-inserter"].subgroup
		data.raw.item["X100-filter-inserter"].subgroup 			= data.raw.item["stack-filter-inserter"].subgroup
		data.raw.item["X100-long-filter-inserter"].subgroup 	= data.raw.item["filter-inserter"].subgroup
		data.raw.item["splitter_X100"].subgroup 				= data.raw.item["express-splitter"].subgroup

	else
		log("00023423")
		data:extend({
			{
				type	= "item-subgroup",
				name	= data.raw.item["express-transport-belt"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["express-transport-belt"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["express-transport-belt"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["express-underground-belt"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["express-underground-belt"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["express-underground-belt"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["pipe-to-ground"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["pipe-to-ground"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["pipe-to-ground"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["pipe"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["pipe"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["pipe"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["express-loader"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["express-loader"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["express-loader"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["stack-inserter"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["stack-inserter"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["stack-inserter"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["long-handed-inserter"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["long-handed-inserter"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["long-handed-inserter"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["stack-filter-inserter"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["stack-filter-inserter"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["stack-filter-inserter"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["filter-inserter"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["filter-inserter"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["filter-inserter"].subgroup].group,
			},
			{
				type	= "item-subgroup",
				name	= data.raw.item["express-splitter"].subgroup .. "X100",
				order	= data.raw["item-subgroup"][data.raw.item["express-splitter"].subgroup].order,
				group	= data.raw["item-subgroup"][data.raw.item["express-splitter"].subgroup].group,
			},
			
		})
		data.raw.item["transport_belt_X100"].subgroup 			= data.raw.item["express-transport-belt"].subgroup .. "X100"
		data.raw.item["transport_ground_X100"].subgroup			= data.raw.item["express-underground-belt"].subgroup .. "X100"
		data.raw.item["transport_ground_X100_chanal1"].subgroup	= data.raw.item["express-underground-belt"].subgroup .. "X100"
		data.raw.item["X100_pipe-ground"].subgroup				= data.raw.item["pipe-to-ground"].subgroup .. "X100"
		data.raw.item["X100_pipe"].subgroup						= data.raw.item["pipe"].subgroup .. "X100"
		data.raw.item["loader_X100"].subgroup					= data.raw.item["express-loader"].subgroup  .. "X100"
		data.raw.item["X100-inserter"].subgroup					= data.raw.item["stack-inserter"].subgroup .. "X100"
		data.raw.item["X100-long-inserter"].subgroup 			= data.raw.item["long-handed-inserter"].subgroup .. "X100"
		data.raw.item["X100-filter-inserter"].subgroup 			= data.raw.item["stack-filter-inserter"].subgroup .. "X100"
		data.raw.item["X100-long-filter-inserter"].subgroup 	= data.raw.item["filter-inserter"].subgroup .. "X100"
		data.raw.item["splitter_X100"].subgroup 				= data.raw.item["express-splitter"].subgroup .. "X100"
	end
	data.raw.item["transport_belt_X100"].order 				= data.raw.item["express-transport-belt"].order .. 'z' 
	data.raw.item["transport_ground_X100"].order			= data.raw.item["express-underground-belt"].order .. 'z' 
	data.raw.item["transport_ground_X100_chanal1"].order	= data.raw.item["express-underground-belt"].order .. 'z' 
	data.raw.item["X100_pipe-ground"].order					= data.raw.item["pipe-to-ground"].order .. 'z' 
	data.raw.item["X100_pipe"].order						= data.raw.item["pipe"].order .. 'z' 
	data.raw.item["loader_X100"].order						= data.raw.item["express-loader"].order  .. 'z' 
	data.raw.item["X100-inserter"].order					= data.raw.item["stack-inserter"].order .. 'z' 
	data.raw.item["X100-long-inserter"].order 				= data.raw.item["long-handed-inserter"].order .. 'z' 
	data.raw.item["X100-filter-inserter"].order 			= data.raw.item["stack-filter-inserter"].order .. 'z' 
	data.raw.item["X100-long-filter-inserter"].order 		= data.raw.item["filter-inserter"].order .. 'z' 
	data.raw.item["splitter_X100"].order 					= data.raw.item["express-splitter"].order .. 'z'
else
	data.raw.item["transport_belt_X100"].subgroup 			= data.raw.item["express-transport-belt"].subgroup
	data.raw.item["transport_ground_X100"].subgroup			= data.raw.item["express-underground-belt"].subgroup
	data.raw.item["transport_ground_X100_chanal1"].subgroup	= data.raw.item["express-underground-belt"].subgroup
	data.raw.item["X100_pipe-ground"].subgroup				= data.raw.item["pipe-to-ground"].subgroup
	data.raw.item["X100_pipe"].subgroup						= data.raw.item["pipe"].subgroup
	data.raw.item["loader_X100"].subgroup					= data.raw.item["express-loader"].subgroup 
	data.raw.item["X100-inserter"].subgroup					= data.raw.item["stack-inserter"].subgroup
	data.raw.item["X100-long-inserter"].subgroup 			= data.raw.item["long-handed-inserter"].subgroup
	data.raw.item["X100-filter-inserter"].subgroup 			= data.raw.item["stack-filter-inserter"].subgroup
	data.raw.item["X100-long-filter-inserter"].subgroup 	= data.raw.item["filter-inserter"].subgroup
	data.raw.item["splitter_X100"].subgroup 				= data.raw.item["express-splitter"].subgroup

	data.raw.item["transport_belt_X100"].order 				= data.raw.item["express-transport-belt"].order .. 'z' 
	data.raw.item["transport_ground_X100"].order			= data.raw.item["express-underground-belt"].order .. 'z' 
	data.raw.item["transport_ground_X100_chanal1"].order	= data.raw.item["express-underground-belt"].order .. 'z' 
	data.raw.item["X100_pipe-ground"].order					= data.raw.item["pipe-to-ground"].order .. 'z' 
	data.raw.item["X100_pipe"].order						= data.raw.item["pipe"].order .. 'z' 
	data.raw.item["loader_X100"].order						= data.raw.item["express-loader"].order  .. 'z' 
	data.raw.item["X100-inserter"].order					= data.raw.item["stack-inserter"].order .. 'z' 
	data.raw.item["X100-long-inserter"].order 				= data.raw.item["long-handed-inserter"].order .. 'z' 
	data.raw.item["X100-filter-inserter"].order 			= data.raw.item["stack-filter-inserter"].order .. 'z' 
	data.raw.item["X100-long-filter-inserter"].order 		= data.raw.item["filter-inserter"].order .. 'z' 
	data.raw.item["splitter_X100"].order 					= data.raw.item["express-splitter"].order .. 'z'

	log("434234")	
end
	log("434234")