data:extend({
	{
		type = "technology",
		name = "tech-lab",
		icon_size = 128,
		icon = thismod .. "tech/tech-lab.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tech-lab"
			},
			{
				type = "unlock-recipe",
				recipe = "research-center-micro"
			},
		},
		prerequisites = {"advanced-electronics", "circuit-network"},
		unit =
		{
			count = 300,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-micro-transport",
		icon_size = 128,
		icon = thismod .. "tech/transport.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-micro-transport"
			}
		},
		prerequisites = {"tech-lab", "logistics-2"},
		unit =
		{
			count = 200,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 2}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-micro-mining",
		icon_size = 128,
		icon = thismod .. "tech/mining.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-micro-mining"
			}
		},
		prerequisites = {"tech-lab", "automation-2"},
		unit =
		{
			count = 300,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 10
		},
		order = "z-a"
	},
})