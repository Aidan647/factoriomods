mk6_belt_horizontal =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32
}
mk6_belt_vertical =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 40,
}
mk6_belt_ending_top =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 80
}
mk6_belt_ending_bottom =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 120
}
mk6_belt_ending_side =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 160
}
mk6_belt_starting_top =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 200
}
mk6_belt_starting_bottom =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 240
}
mk6_belt_starting_side =
{
	filename = "__X100_assembler__/graphics/icon/icon_6d_tbelt_5.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 280
}

data:extend({
	-- Item1
	{
		type = "item",
		name = "transport_ground_X100_chanal1",
		icons ={
		{icon = "__X100_assembler__/graphics/icon/icon_6d_ground_structure_5_50_.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		flags = {"goes-to-quickbar"},
		icon_size = 32,
		subgroup = "underground-belt",
		order = "b[underground-belt]-z[underground-belt]",
		place_result = "transport_ground_X100_chanal1",
		stack_size = 200
	},

	--Entity1
	{
		type = "underground-belt",
		name = "transport_ground_X100_chanal1",
		icon = "__X100_assembler__/graphics/icon/icon_6d_ground_structure_5_50_.png",
		flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "transport_ground_X100_chanal1"},
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
		speed = 1,
		structure =
		{
			direction_in =
			{
				sheet =
				{
					filename = "__X100_assembler__/graphics/entity/underground-belt-structure-chanal1.png",
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
					filename = "__X100_assembler__/graphics/entity/underground-belt-structure-chanal1.png",
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