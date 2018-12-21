data:extend({
	{
		type = "tool",
		name = "science-pack-13",
		icon = "__base__/graphics/icons/space-science-pack.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "science-pack",
		order = "g[space-science-pack]",
		stack_size = 2000,
		durability = 5,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value"
	},
	{
		type = "item",
		name = "tech-lab",
		icon = "__base__/graphics/icons/lab.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "g[lab]",
		place_result = "tech-lab",
		stack_size = 10
	}
})