

data:extend({
	{
		type = "recipe-category",
		name = "science-micro"
	},
	{
		type = "recipe-category",
		name = "science-nano"
	},
	{
		type = "recipe",
		name = "tech-lab",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 10},
			{"iron-gear-wheel", 10},
			{"transport-belt", 4}
		},
		result = "tech-lab"
	},
	{
		type = "recipe",
		name = "research-center-micro",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 10},
			{"iron-gear-wheel", 10},
			{"iron-plate", 20},
			{"small-lamp", 3}
		},
		result = "research-center-micro"
	},
	{
		type = "recipe",
		name = "science-micro-transport",
		energy_required = 2,
		category = "science-micro",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"pipe", 1},
				{"transport-belt", 1},
				{"inserter", 1}
			},
			result = "science-micro-transport"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"pipe", 1},
				{"transport-belt", 2},
				{"inserter", 2}
			},
			result = "science-micro-transport"
		}
	},
	{
		type = "recipe",
		name = "science-micro-mining",
		energy_required = 2,
		category = "science-micro",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"burner-mining-drill", 2},
				{"green-wire", 5}
			},
			result = "science-micro-mining"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"burner-mining-drill", 3},
				{"green-wire", 7}
			},
			result = "science-micro-mining"
		}
	},
	{
		type = "recipe",
		name = "science-micro-warfare",
		energy_required = 2,
		category = "science-micro",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"gun-turret", 1},
				{"stone-wall", 1}
			},
			result = "science-micro-warfare",
			result_count = 2
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"gun-turret", 1},
				{"stone-wall", 2}
			},
			result = "science-micro-warfare"
		}
	},
	{
		type = "recipe",
		name = "science-micro-space",
		energy_required = 2,
		category = "science-micro",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"flying-robot-frame", 1},
				{"advanced-circuit", 1}
			},
			result = "science-micro-space"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"flying-robot-frame", 1},
				{"advanced-circuit", 4}
			},
			result = "science-micro-space"
		}
	},
})