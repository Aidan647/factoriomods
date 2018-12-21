data:extend({
	{
		type = "item",
		name = "space-solar-panel",
		icons = {{icon = thismod .. "icons/space-solar-panel.png"},{icon = thismod .. "type/space-icon.png"}},
		icon_size = 64,
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "m[satellite]",
		stack_size = 1,
		rocket_launch_product = {"space-solar-panel-reciver", 1}
	},
	{
		type = "item",
		name = "space-solar-panel-reciver",
		icon = thismod .. "icons/space-solar-panel-reciver.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "intermediate-product",
		order = "m[satellite]",
		stack_size = 10,
		place_result = "space-solar-panel-reciver"
	}
})