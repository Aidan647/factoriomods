data:extend({
	{
		type = "technology",
		name = "tech-lab",
		icon_size = 128,
		icon = "__base__/graphics/technology/steel-processing.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tech-lab"
			},
			{
				type = "unlock-recipe",
				recipe = "science-pack-13"
			}
		},
		prerequisites = {"electronics"},
		unit =
		{
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 2}
			},
			time = 20
		},
		order = "z-a"
	}
})