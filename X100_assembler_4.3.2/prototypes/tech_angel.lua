data:extend({
	{
		type = "technology",
		name = "X100_assembler",
		icon = "__X100_assembler__/graphics/icon/X100_assembler.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "X100_assembler"
			},
			{
				type = "unlock-recipe",
				recipe = "X100_advance_assembler"
			},
			{
				type = "unlock-recipe",
				recipe = "X100_furnace"
			}
		},
		prerequisites = {"automation-3"},
		unit =
		{
			count = 10,
			ingredients =
			{
				{"science-pack-1", 10},
				{"science-pack-2", 10}
			},
			time = 10
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "transport_belt_X100",
		icon = "__X100_assembler__/graphics/icon/transport_belt.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "transport_belt_X100"
			},
		{
				type = "unlock-recipe",
				recipe = "transport_ground_X100_chanal1"
			},
			{
				type = "unlock-recipe",
				recipe = "splitter_X100"
			},
			{
				type = "unlock-recipe",
				recipe = "loader_X100"
			},
			{
				type = "unlock-recipe",
				recipe = "transport_ground_X100"
			}

		},
		prerequisites = {"automation-3"},
		unit =
		{
			count = 5,
			ingredients =
			{
				{"science-pack-1", 100},
				{"science-pack-2", 100}
			},
			time = 10
		},
		order = "c-a"
	},
			{
		type = "technology",
		name = "X100-train",
		icon = "__X100_assembler__/graphics/technology/smelting-loco-1-tech.png",
	icon_size = 128,
	prerequisites =
		{
	"railway",
		},
		effects =
		{
		{
				type = "unlock-recipe",
				recipe = "X100-locomotive-1"
			},
		{
				type = "unlock-recipe",
				recipe = "X100-locomotive-tender"
			},
		{
				type = "unlock-recipe",
				recipe = "X100-wagon-1"
			},
		{
				type = "unlock-recipe",
				recipe = "X100-wagon-2"
			},
		},
		unit =
		{
			count = 60,
			ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		},
			time = 15
		},
		order = "c-a"
		},
		{
		type = "technology",
		name = "X100_electric-mining-drill",
		icon = "__base__/graphics/icons/electric-mining-drill.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "X100_electric-mining-drill"
			}

		},
		prerequisites = {"X100_assembler"},
		unit =
		{
			count = 10,
			ingredients =
			{
				{"science-pack-1", 8},
				{"science-pack-2", 10},
			},
			time = 70
		},
		order = "c-a"
	},
})