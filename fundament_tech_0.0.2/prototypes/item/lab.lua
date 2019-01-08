for _,x in ipairs(funtech.reports_levels) do
	for i,y in ipairs(funtech.reports_types) do
		table.insert(funtech.extend, {
			type = "tool",
			name = "science-" .. x .. "-" .. y,
			localised_description = {"item-description.science-pack"},
			icon = thismod .. "error/32.png",
			icon_size = 32,
			flags = {"goes-to-main-inventory"},
			subgroup = "science-" .. x,
			order = i,
			stack_size = 300,
			durability = 2,
			durability_description_key = "description.science-pack-remaining-amount-key",
			durability_description_value = "description.science-pack-remaining-amount-value"
		})
	end
end


data:extend({
	{
		type = "item",
		name = "research-center-micro",
		icons = {{icon = thismod .. "icons/research-center.png"},{icon = thismod .. "type/science-micro_32.png"}},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "science-micro",
		order = "z[space-science-pack]",
		place_result = "research-center-micro",
		stack_size = 10
	},
	{
		type = "item",
		name = "research-center-nano",
		icons = {{icon = thismod .. "icons/research-center.png"},{icon = thismod .. "type/science-nano_32.png"}},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "science-nano",
		order = "z[space-science-pack]",
		place_result = "research-center-nano",
		stack_size = 10
	},
	{
		type = "item",
		name = "tech-lab",
		icon = "__base__/graphics/icons/lab.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "z[tech-lab]",
		place_result = "tech-lab",
		stack_size = 10
	}
})