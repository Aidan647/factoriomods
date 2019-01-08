data:extend({
	{
		type = "recipe",
		name = "space-solar-panel",
		icon = thismod .. "icons/space-solar-panel.png",
		icon_size = 64,
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"solar-panel", 300},
			{"processing-unit", 30},
			{"steel-plate", 100},
			{"low-density-structure", 10},
			{"rocket-fuel", 10},
			{"rocket-control-unit", 10}
		},
		result = "space-solar-panel"
	}
})