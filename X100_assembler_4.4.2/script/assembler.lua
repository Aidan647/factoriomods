require("list")
--Var

local function first_result_type(recipe, x)
	local z = "item"
	local not_item = ezlib.tbl.add(ezlib.item.not_item, "fluid")
	if not x then x = 1 end
	if recipe.normal then
		if recipe.normal.results then
			for a,b in ipairs(not_item) do
				if recipe.normal.results[x]["name"] then
					if data.raw[b][recipe.normal.results[x]["name"]] then z = b	end
				else
					if data.raw[b][recipe.normal.results[x][1]] then z = b end
				end
			end
		end
	elseif recipe.results then
		for a,b in ipairs(not_item) do
			if recipe.results[x]["name"] then
				if data.raw[b][recipe.results[x]["name"]] then z = b end
			else
				if data.raw[b][recipe.results[x][1]] then z = b	end
			end
		end
	end
	return z
end

local function fresult_type(name)
	local z = "item"
	local not_item = ezlib.tbl.add(ezlib.item.not_item, "fluid")
	for a,b in ipairs(not_item) do
		if data.raw[b][name] then
			z = b
			break
		end
	end
	return z
end

for q,value in ipairs(list_assemdler) do
	local err = nil
	local z = nil
	local zz = nil
	local itn = nil
	local order_group, group, order_subgroup, subgroup, order
	local recipe = table.deepcopy(data.raw.recipe[value])
	local case = 0
	local result_name, name, lenght
	if recipe then
		----------------------------------------------------------------------------------------------------
		if recipe.result	then 									 case = 10 end
		if recipe.results	then									 case = 11 end
		if recipe.normal	then	if recipe.normal.result		then case = 20 end end
		if recipe.normal	then	if recipe.normal.results	then case = 21 end end
		----------------------------------------------------------------------------------------------------
		if case == 10 then
			result_name = recipe.result
		elseif case == 20 then
			result_name = recipe.normal.result
		elseif case == 11 then
			if recipe.results[1]["name"] then
				result_name = recipe.results[1]["name"]
			else
				result_name = recipe.results[1][1]
			end
		elseif case == 21 then
			if recipe.normal.results[1]["name"] then
				result_name = recipe.normal.results[1]["name"]
			else
				result_name = recipe.normal.results[1][1]
			end
		end
		if case == 21 then 
			for i,_ in ipairs(recipe.normal.results) do
				if recipe.normal.results[i].amount_min then
					recipe.normal.results[i].amount = recipe.normal.results[i].amount_min
					recipe.normal.results[i].amount_min = nil
					recipe.normal.results[i].amount_max = nil
					recipe.normal.results[i].probability = nil
					if recipe.normal.results[i].amount < 1 then recipe.normal.results[i].amount = 1 end
				end
			end
			for i,_ in ipairs(recipe.expensive.results) do
				if recipe.expensive.results[i].amount_min then
					recipe.expensive.results[i].amount = recipe.expensive.results[i].amount_min
					recipe.expensive.results[i].amount_min = nil
					recipe.expensive.results[i].amount_max = nil
					recipe.expensive.results[i].probability = nil
					if recipe.expensive.results[i].amount < 1 then recipe.expensive.results[i].amount = 1 end
				end
			end
		end
		if case == 11 then
			for i,_ in ipairs(recipe.results) do
				if recipe.results[i].amount_min then
					recipe.results[i].amount = recipe.results[i].amount_min
					recipe.results[i].amount_min = nil
					recipe.results[i].amount_max = nil
					recipe.results[i].probability = nil
					if recipe.results[i].amount < 1 then recipe.results[i].amount = 1 end
				end
			end
		end
		if case == 10 then
			recipe.results = {{recipe.result, recipe.result_count}}
			recipe.result = nil
			recipe.result_count = nil
			case = 11
		end
		if case == 20 then
			recipe.normal.results = {{recipe.normal.result, recipe.normal.result_count}}
			recipe.normal.result = nil
			recipe.normal.result_count = nil
			recipe.expensive.results = {{recipe.expensive.result, recipe.expensive.result_count}}
			recipe.expensive.result = nil
			recipe.expensive.result_count = nil
			case = 21
		end
		if case == 11 then
			for x,y in ipairs(recipe.results) do
				if recipe.results[x]["amount"] then
					if recipe.results[x]["amount"] then
						recipe.results[x]["amount"] = recipe.results[x]["amount"] * 100
					else
						recipe.results[x]["amount"] = 100
					end
					--if recipe.results[x]["amount"] >= 10000 then err = 102 end
				else
					if recipe.results[x][2] then
						recipe.results[x][2] = recipe.results[x][2] * 100
					else
						recipe.results[x][2] = 100
					end
					--if recipe.results[x][2] >= 10000 then err = 103 end
				end
			end
		elseif case == 21 then
			for x,y in ipairs(recipe.normal.results) do
				if recipe.normal.results[x]["amount"] then
					if recipe.normal.results[x]["amount"] then
						recipe.normal.results[x]["amount"] = recipe.normal.results[x]["amount"] * 100 or 100
					else
						recipe.normal.results[x]["amount"] = 100
					end
					--if recipe.normal.results[x]["amount"] >= 10000 then err = 105 end
				else
					if recipe.normal.results[x][2] then
						recipe.normal.results[x][2] = recipe.normal.results[x][2] * 100
					else
						recipe.normal.results[x][2] = 100
					end
					--if recipe.normal.results[x][2] >= 10000 then err = 106 end
				end
			end
			for x,y in ipairs(recipe.expensive.results) do
				if recipe.expensive.results[x]["amount"] then
					if recipe.expensive.results[x]["amount"] then
						recipe.expensive.results[x]["amount"] = recipe.expensive.results[x]["amount"] * 100
					else
						recipe.expensive.results[x]["amount"] = 100
					end
					--if recipe.expensive.results[x]["amount"] >= 10000 then err = 107 end
				else
					if recipe.expensive.results[x][2] then
						recipe.expensive.results[x][2] = recipe.expensive.results[x][2] * 100
					else
						recipe.expensive.results[x][2] = 100
					end
					--if recipe.expensive.results[x][2] >= 10000 then err = 108 end
				end
			end
		else
			err = 10
		end
		if recipe.ingredients then
			for x,y in ipairs(recipe.ingredients) do
				if recipe.ingredients[x]["amount"] then
					recipe.ingredients[x]["amount"] = recipe.ingredients[x]["amount"] * 100
					if recipe.ingredients[x]["amount"] >= 65500 then err = 109 end
				else
					recipe.ingredients[x][2] = recipe.ingredients[x][2] * 100
					if recipe.ingredients[x][2] >= 65500 then err = 110 end
				end
			end
		elseif recipe.normal.ingredients then
			for x,y in ipairs(recipe.normal.ingredients) do
				if recipe.normal.ingredients[x]["amount"] then
					recipe.normal.ingredients[x]["amount"] = recipe.normal.ingredients[x]["amount"] * 100
					if recipe.normal.ingredients[x]["amount"] >= 65500 then err = 111 end
				else
					recipe.normal.ingredients[x][2] = recipe.normal.ingredients[x][2] * 100
					if recipe.normal.ingredients[x][2] >= 65500 then err = 112 end
				end
			end
			for x,y in ipairs(recipe.expensive.ingredients) do
				if recipe.expensive.ingredients[x]["amount"] then
					recipe.expensive.ingredients[x]["amount"] = recipe.expensive.ingredients[x]["amount"] * 100
					if recipe.expensive.ingredients[x]["amount"] >= 65500 then err = 113 end
				else
					recipe.expensive.ingredients[x][2] = recipe.expensive.ingredients[x][2] * 100
					if recipe.expensive.ingredients[x][2] >= 65500 then err = 114 end
				end
			end
		else
			err = 20
		end
		if case == 11 then
			z = first_result_type(recipe)
			if recipe.results[1]["name"] then
				if data.raw[z][recipe.results[1]["name"]] 			then itn = data.raw[z][recipe.results[1]["name"]]	end			
			else
				if data.raw[z][recipe.results[1][1]] 				then itn = data.raw[z][recipe.results[1][1]]		end
			end
		end
		if case == 21 then
			z = first_result_type(recipe)
			if recipe.normal.results[1]["name"] then
				if data.raw[z][recipe.normal.results[1]["name"]] 	then itn = data.raw[z][recipe.normal.results[1]["name"]]	end
			else
				if data.raw[z][recipe.normal.results[1][1]] 		then itn = data.raw[z][recipe.normal.results[1][1]]			end
			end
		end
		if case == 21 then
			for x,y in ipairs(recipe.normal.results) do
				zz = first_result_type(recipe, x)
				if recipe.normal.results[x]["amount"] then
					if not recipe.normal.results[x]["type"] or recipe.normal.results[x]["type"] == "item" then
						if data.raw[zz][recipe.normal.results[x]["name"]] then
							while recipe.normal.results[x]["amount"] > data.raw[zz][recipe.normal.results[x]["name"]].stack_size do
								recipe.normal.results = ezlib.tbl.add(recipe.normal.results, {{recipe.normal.results[x]["name"], data.raw[zz][recipe.normal.results[x]["name"]].stack_size}})
								recipe.normal.results[x]["amount"] = recipe.normal.results[x]["amount"] - data.raw[zz][recipe.normal.results[x]["name"]].stack_size
							end
						end
					end
				else
					if zz then
						while recipe.normal.results[x][2] > data.raw[zz][recipe.normal.results[x][1]].stack_size do
							recipe.normal.results = ezlib.tbl.add(recipe.normal.results, {{recipe.normal.results[x][1], data.raw[zz][recipe.normal.results[x][1]].stack_size}})
							recipe.normal.results[x][2] = recipe.normal.results[x][2] - data.raw[zz][recipe.normal.results[x][1]].stack_size
						end
					end
				end
			end
			for x,y in ipairs(recipe.expensive.results) do
			zz = first_result_type(recipe, x)
				if recipe.expensive.results[x]["amount"] then
					if not recipe.expensive.results[x]["type"] or recipe.expensive.results[x]["type"] == "item" then if data.raw[zz][recipe.expensive.results[x]["name"]] then
						while recipe.expensive.results[x]["amount"] > data.raw[zz][recipe.expensive.results[x]["name"]].stack_size do
							recipe.expensive.results = ezlib.tbl.add(recipe.expensive.results, {{recipe.expensive.results[x]["name"], data.raw[zz][recipe.expensive.results[x]["name"]].stack_size}})
							recipe.expensive.results[x]["amount"] = recipe.expensive.results[x]["amount"] - data.raw[zz][recipe.expensive.results[x]["name"]].stack_size
						end
						end end
					else
						if zz then
							while recipe.expensive.results[x][2] > data.raw[zz][recipe.expensive.results[x][1]].stack_size do
								recipe.expensive.results = ezlib.tbl.add(recipe.expensive.results, {{recipe.expensive.results[x][1], data.raw[zz][recipe.expensive.results[x][1]].stack_size}})
								recipe.expensive.results[x][2] = recipe.expensive.results[x][2] - data.raw[zz][recipe.expensive.results[x][1]].stack_size
							end
						end
					end
				end
			end
			if case == 11 then
				for x,y in ipairs(recipe.results) do
					zz = first_result_type(recipe, x)
					if recipe.results[x]["amount"] then
						if not recipe.results[x]["type"] or recipe.results[x]["type"] == "item" then
							if data.raw[zz][recipe.results[x]["name"]] then
								while recipe.results[x]["amount"] > data.raw[zz][recipe.results[x]["name"]].stack_size do
									recipe.results = ezlib.tbl.add(recipe.results, {{recipe.results[x]["name"], data.raw[zz][recipe.results[x]["name"]].stack_size}})
									recipe.results[x]["amount"] = recipe.results[x]["amount"] - data.raw[zz][recipe.results[x]["name"]].stack_size
								end
							end
						end
					else
					if zz then
						while recipe.results[x][2] > data.raw[zz][recipe.results[x][1]].stack_size do
							recipe.results = ezlib.tbl.add(recipe.results, {{recipe.results[x][1], data.raw[zz][recipe.results[x][1]].stack_size}})
							recipe.results[x][2] = recipe.results[x][2] - data.raw[zz][recipe.results[x][1]].stack_size
						end
					end
				end
			end
		end

		result_type = fresult_type(result_name)
		if case == 11 then
			lenght = #recipe.results
		end
		if case == 21 then
			lenght = #recipe.normal.results
		end
		if not recipe.localised_name and lenght ~= 1 then
			if data.raw[result_type][result_name] then
				if data.raw[result_type][result_name].localised_name then
					recipe.localised_name = data.raw[result_type][result_name].localised_name
				elseif result_type == "fluid" then
					recipe.localised_name = {"fluid-name." .. result_name}
				elseif data.raw[result_type][result_name].place_result then
					recipe.localised_name = {"entity-name." .. data.raw[result_type][result_name].place_result}
					recipe.localised_description = {"entity-description." .. data.raw[result_type][result_name].place_result}
				elseif data.raw[result_type][result_name].placed_as_equipment_result then
					recipe.localised_name = {"equipment-name." .. data.raw[result_type][result_name].placed_as_equipment_result}
					recipe.localised_description = {"equipment-description." .. data.raw[result_type][result_name].placed_as_equipment_result}
				else
					recipe.localised_name = {"item-name." .. result_name}
					recipe.localised_description = {"item-description." .. result_name}
					if ezlib.debug then
						log(result_name .. 33333)
					end
				end
			else
				if ezlib.debug then
					log(result_type .. "    " .. result_name .. "  44444")
				end
			end
		elseif not recipe.localised_description then
			recipe.localised_description = {"recipe-description." .. value}
			if result_type == "fluid" then
				recipe.localised_name = {"fluid-name." .. result_name}
			end
		end

	--local order_group, group, order_subgroup, subgroup, order
		if itn then
			recipe.subgroup = recipe.subgroup or itn.subgroup or "z"
			recipe.order = recipe.order or itn.order or "z"
			if data.raw["item-subgroup"][recipe.subgroup] then
				subgroup = data.raw["item-subgroup"][recipe.subgroup].name or "z" 
				order_subgroup = data.raw["item-subgroup"][recipe.subgroup].order or "z" 
				group = data.raw["item-subgroup"][recipe.subgroup].group or "z" 
				order_group = data.raw["item-group"][group].order or "z" 
				order = order_group .. "--" .. group .. "--" .. order_subgroup .. "--" .. subgroup .. "--" .. recipe.order
			else
				order = "zz--" .. recipe.subgroup .. "--" .. recipe.order
			end
			recipe.order = order
			if itn.icon and not recipe.icon then
				recipe.icon = itn.icon
			elseif itn.icons then
				recipe.icons = itn.icons
			end
			if itn.icon_size and not recipe.icon_size then
				recipe.icon_size = itn.icon_size
			end
		end
	else
		err = 0
	end

--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------

	if not err then
		recipe.crafting_machine_tint = nil
		recipe.category ="X100_assembler"
		name = "_X100_" .. value
		recipe.name = name
		recipe.subgroup = "X100_subgroup_assembler"
		data:extend({recipe})
		ezlib.remove ("recipe", name)
		if ezlib.debug then
			log("OK " .. value)
		end
		if data.raw.recipe[value] then
			tch = ezlib.tech.find.unlock_recipe(value)
			if type(tch) == "string" then
				ezlib.tech.add.unlock_recipe(tch, recipe.name)
			elseif type(tch) == "table" then
				for x,tech_name in pairs(tch) do
					ezlib.tech.add.unlock_recipe(tech_name, recipe.name)
				end
			elseif tch == nil then
				-- data.raw.recipe[recipe.name].enabled = true
			else
				-- data.raw.recipe[recipe.name].enabled = true
			end
		end
	else
		if ezlib.debug then
			log("[Warning] " .. value .. " wasn't added. Error:" .. err)
		end
	end
end