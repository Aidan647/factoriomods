data:extend({
	{
		type = "technology",
		name = "robotics-2",
		icon_size = 128, 
		icon = "__base__/graphics/technology/robotics.png",
		prerequisites = {"robotics", "flying", "science-micro-tech"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 2},
				{"high-tech-science-pack", 2},
				{"science-micro-tech", 1},
			},
			time = 60
		},
		order = "z-a"
	}
})