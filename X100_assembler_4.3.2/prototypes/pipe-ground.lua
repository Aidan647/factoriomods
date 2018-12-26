data:extend({
-- Item
	{
		type = "item",
		name = "X100_pipe-ground",
	icons ={
		{icon = "__X100_assembler__/graphics/entity/pipe/icon_5d_pipe-to-underground_3_.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
	},
		flags = {"goes-to-quickbar"},
		icon_size = 32,
		subgroup = "energy-pipe-distribution",
		order = "zz",
		place_result = "X100_pipe-ground",
		stack_size = 200
	},



--Entity
	{
		type = "pipe-to-ground",
		name = "X100_pipe-ground",
		icon = "__X100_assembler__/graphics/entity/pipe/icon_5d_pipe-to-underground_3_.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "X100_pipe-ground"},
		icon_size = 32,
		max_health = 1000,
	max_distance = 200,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 80
			}
		},
		fast_replaceable_group = "pipe-to-ground",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		drawing_mask = {{-0.29, -0.29}, {0.29, 0.29}},
	collision_mask = {"object-layer"},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 10,
			pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {0, -1} },
				{
					position = {0, 1},
					max_underground_distance = 200
				}
			},
		},
		underground_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5
		},
		pictures =
		{
			up =
			{
				filename = "__X100_assembler__/graphics/entity/pipe/icon_5d_pipe-to-ground-up_3.png",
				priority = "high",
				width = 44,
				height = 32 --, shift = {0.10, -0.04}
			},
			down =
			{
				filename = "__X100_assembler__/graphics/entity/pipe/icon_5d_pipe-to-ground-down_3.png",
				priority = "high",
				width = 40,
				height = 32 --, shift = {0.05, 0}
			},
			left =
			{
				filename = "__X100_assembler__/graphics/entity/pipe/icon_5d_pipe-to-ground-left_3.png",
				priority = "high",
				width = 32,
				height = 42 --, shift = {-0.12, 0.1}
			},
			right =
			{
				filename = "__X100_assembler__/graphics/entity/pipe/icon_5d_pipe-to-ground-right_3.png",
				priority = "high",
				width = 32,
				height = 40 --, shift = {0.1, 0.1}
			},
		}
	},
})