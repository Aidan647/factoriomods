function ezlib.item.create (value)
	local err = "[FATAL ERROR]"
	if value then
		local item = {}
		item.type = value.type or "item"
		if not value.name then
			err = err .. "\nName is missing"
		else
			item.name = value.name 
		end
		item.localised_name 			= value.localised_name
		item.localised_description 		= value.localised_description
		item.order 						= value.order or "zz"
		item.place_result 				= value.place_result
		item.place_as_equipment_result 	= value.place_as_equipment_result
		item.stackable 					= value.stackable
		item.icon 						= value.icon
		item.icon_size 					= value.icon_size
		if 
		if item.name then
			ezlib.remove (item.type, item.name)
		end
		item.flags = value.flags or {"goes-to-main-inventory"}
		if not value.subgroup then
			err = err .. "\nSubgroup is missing name: " .. item.name
		else
			item.subgroup = value.subgroup
		end
		item.stack_size = 

		if err == "[FATAL ERROR]" then
			data:extend(item)
		else
			error(err)
		end
	end
end

-- data:extend(
-- {
--   {
--     type = "item",
--     name = "stone-brick",
--     icon = "__base__/graphics/icons/stone-brick.png",
--     icon_size = 32,
--     flags = {"goes-to-main-inventory"},
--     subgroup = "terrain",
--     order = "a[stone-brick]",
--     stack_size = 100,
--     place_as_tile =
--     {
--       result = "stone-path",
--       condition_size = 1,
--       condition = { "water-tile" }
--     }
--   },