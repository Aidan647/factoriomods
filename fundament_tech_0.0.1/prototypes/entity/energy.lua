data:extend({
	{
		type = "solar-panel",
		name = "space-solar-panel-reciver",
		icon = thismod .. "icons/space-solar-panel-reciver.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.4, mining_time = 2, result = "space-solar-panel-reciver"},
		max_health = 200,
		corpse = "small-remnants",
		collision_box = {{-0.4, -0.4}, {0.45, 0.4}},
		drawing_box = {{-0.6, -3.2}, {0.6, 0.6}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "solar"
		},
		picture =
		{
			layers =
			{
				{
					filename = thismod .. "entity/space-solar-panel-reciver.png",
					priority = "high",
					width = 110,
					height = 150,
					shift = {0.625, -1.325}
				}
			}

		},
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		production = "100MW"
	}
})