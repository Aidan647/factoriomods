data:extend({
	{
		type = "technology",
		name = "laser-2",
		icon_size = 128,
		icon = "__base__/graphics/technology/laser.png",
		prerequisites = {"laser", "science-micro-tech"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"high-tech-science-pack", 1}
			},
			time = 30
		},
		order = "a-a-b"
	}
})