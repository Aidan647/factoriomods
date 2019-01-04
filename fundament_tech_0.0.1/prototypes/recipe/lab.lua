

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
				{"burner-mining-drill", 1},
				{"green-wire", 5}
			},
			result = "science-micro-mining"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"burner-mining-drill", 2},
				{"green-wire", 7}
			},
			result = "science-micro-mining"
		}
	},
	{
		type = "recipe",
		name = "science-micro-tech",
		energy_required = 2,
		category = "science-micro",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"electronic-circuit", 7},
				{"iron-gear-wheel", 4},
				{"advanced-circuit", 3}
			},
			result = "science-micro-tech",
			result_count = 2
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"electronic-circuit", 10},
				{"iron-gear-wheel", 5},
				{"advanced-circuit", 5}
			},
			result = "science-micro-tech"
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
--------------------------------------------------------------------------------------------
	{
		type = "recipe",
		name = "research-center-nano",
		energy_required = 10,
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"processing-unit", 40},
				{"iron-gear-wheel", 50},
				{"battery", 5},
				{"speed-module-3", 2},
				{"effectivity-module-3", 3},
				{"productivity-module-3", 2},
				{"filter-inserter", 3},
			},
			result = "research-center-nano"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"processing-unit", 60},
				{"iron-gear-wheel", 50},
				{"battery", 10},
				{"speed-module-3", 3},
				{"effectivity-module-3", 5},
				{"productivity-module-3", 3},
				{"filter-inserter", 20},
			},
			result = "research-center-nano"
		}
	},
	{
		type = "recipe",
		name = "science-nano-transport",
		energy_required = 2,
		category = "science-nano",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"pipe", 1},
				{"transport-belt", 1},
				{"inserter", 1}
			},
			result = "science-nano-transport"
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
			result = "science-nano-transport"
		}
	},
	{
		type = "recipe",
		name = "science-nano-mining",
		energy_required = 2,
		category = "science-nano",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"burner-mining-drill", 1},
				{"green-wire", 5}
			},
			result = "science-nano-mining"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"burner-mining-drill", 2},
				{"green-wire", 7}
			},
			result = "science-nano-mining"
		}
	},
	{
		type = "recipe",
		name = "science-nano-tech",
		energy_required = 2,
		category = "science-nano",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"electronic-circuit", 7},
				{"iron-gear-wheel", 4},
				{"advanced-circuit", 3}
			},
			result = "science-nano-tech",
			result_count = 2
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"electronic-circuit", 10},
				{"iron-gear-wheel", 5},
				{"advanced-circuit", 5}
			},
			result = "science-nano-tech"
		}
	},
	{
		type = "recipe",
		name = "science-nano-space",
		energy_required = 2,
		category = "science-nano",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"flying-robot-frame", 1},
				{"advanced-circuit", 1}
			},
			result = "science-nano-space"
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"flying-robot-frame", 1},
				{"advanced-circuit", 4}
			},
			result = "science-nano-space"
		}
	},
})