data:extend({
	-- Item
	{
		type = "item",
		name = "transport_ground_X100",
		icons ={
		{icon = "__X100_assembler__/graphics/icon/icon_5d_ground_structure_5_50_.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		flags = {"goes-to-quickbar"},
		icon_size = 32,
		subgroup = "underground-belt",
		order = "b[underground-belt]-z[underground-belt]",
		place_result = "transport_ground_X100",
		stack_size = 200
	},

	--Entity
	{
		type = "underground-belt",
		name = "transport_ground_X100",
		icon = "__X100_assembler__/graphics/icon/icon_5d_ground_structure_5_50_.png",
		flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "transport_ground_X100"},
		icon_size = 32,
		max_health = 70,
		corpse = "small-remnants",
		max_distance = 200,
		underground_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		underground_remove_belts_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines-remove.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		resistances =
		{
			{
				type = "fire",
				percent = 60
			},
			{
				type = "impact",
				percent = 30
			}
		},
		resistances =
		{
			{
				type = "fire",
				percent = 60
			}
		},
		collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
		selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
		distance_to_enter = 0.35,
		animation_speed_coefficient = 2,
		belt_horizontal = basic_belt_horizontal,
		belt_vertical = basic_belt_vertical,
		ending_top = basic_belt_ending_top,
		ending_bottom = basic_belt_ending_bottom,
		ending_side = basic_belt_ending_side,
		starting_top = basic_belt_starting_top,
		starting_bottom = basic_belt_starting_bottom,
		starting_side = basic_belt_starting_side,
		fast_replaceable_group = "transport-belt",
		speed = 0.5,
		structure =
		{
			direction_in =
			{
				sheet =
				{
					filename = "__X100_assembler__/graphics/entity/underground-belt-structure.png",
					priority = "extra-high",
					shift = {0.26, 0},
					width = 57,
					height = 43,
					y = 43
				}
			},
			direction_out =
			{
				sheet =
				{
					filename = "__X100_assembler__/graphics/entity/underground-belt-structure.png",
					priority = "extra-high",
					shift = {0.26, 0},
					width = 57,
					height = 43
				}
			}
		},
		ending_patch = ending_patch_prototype
	},
})