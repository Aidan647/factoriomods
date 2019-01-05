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
			count = 100,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-micro-tech",
		icon_size = 128,
		icon = thismod .. "tech/tech.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-micro-tech"
			}
		},
		prerequisites = {"tech-lab"},
		unit =
		{
			count = 300,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-micro-space",
		icon_size = 128,
		icon = thismod .. "tech/space.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-micro-space"
			}
		},
		prerequisites = {"science-micro-tech"},
		unit =
		{
			count = 300,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 20
		},
		order = "z-a"
	},
---------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "tech-lab-2",
		icon_size = 128,
		icon = thismod .. "tech/tech-lab.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "research-center-nano"
			},
		},
		prerequisites = {"advanced-electronics-2", "tech-lab"},
		unit =
		{
			count = 300,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"high-tech-science-pack", 2},
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-nano-transport-2",
		icon_size = 128,
		icon = thismod .. "tech/transport.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-nano-transport"
			}
		},
		prerequisites = {"tech-lab-2", "logistics-3", "science-micro-transport"},
		unit =
		{
			count = 400,
			ingredients = {
				{"science-micro-transport", 1},
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-nano-mining-2",
		icon_size = 128,
		icon = thismod .. "tech/mining.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-nano-mining"
			}
		},
		prerequisites = {"tech-lab-2", "automation-3", "science-micro-mining"},
		unit =
		{
			count = 200,
			ingredients = {
				{"science-micro-mining", 1},
				{"science-pack-1", 2},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-nano-tech-2",
		icon_size = 128,
		icon = thismod .. "tech/tech.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-nano-tech"
			}
		},
		prerequisites = {"tech-lab-2", "science-micro-tech"},
		unit =
		{
			count = 600,
			ingredients = {
				{"science-micro-tech", 1},
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"high-tech-science-pack", 2}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "science-nano-space-2",
		icon_size = 128,
		icon = thismod .. "tech/space.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-nano-space"
			}
		},
		prerequisites = {"science-nano-tech-2", "science-micro-space"},
		unit =
		{
			count = 300,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 20
		},
		order = "z-a"
	},
})