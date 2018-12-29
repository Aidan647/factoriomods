data:extend({
	{
		type = "recipe-category",
		name = "X100_assembler"
	},
	-- Item
	{
		type = "item",
		name = "X100_assembler",
	icons ={
	{icon = "__X100_assembler__/graphics/icon/X100_assembler.png"},
	{icon = "__X100_assembler__/graphics/icons.png"}
	},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "e",
		place_result = "X100_assembler",
		stack_size = 200
	},


	--Entity
	{
		type = "assembling-machine",
		name = "X100_assembler",
		icon = "__X100_assembler__/graphics/icon/X100_assembler.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "X100_assembler"},
		icon_size = 32,
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__X100_assembler__/graphics/entity/textur_X100_assembler.png",
			priority = "high",
			width = 142,
			height = 113,
			frame_count = 32,
			line_length = 8,
			shift = {0.84, -0.09}
		},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		working_sound =
		{
			sound = {
				{
					filename = "__base__/sound/assembling-machine-t2-1.ogg",
					volume = 0.8
				},
				{
					filename = "__base__/sound/assembling-machine-t2-2.ogg",
					volume = 0.8
				},
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 5.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "1000kW",
		ingredient_count = 8,
		module_specification =
		{
			module_slots = 6
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	},
	
	-- -------------------------------
	
		{
		type = "item",
		name = "X100_advance_assembler",
		icons ={
			{icon = "__X100_assembler__/graphics/icon/X100_adv_assembler.png"},
			{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "e",
		place_result = "X100_advance_assembler",
		stack_size = 200
	},


	--Entity
	{
		type = "assembling-machine",
		name = "X100_advance_assembler",
		icon = "__X100_assembler__/graphics/icon/X100_adv_assembler.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "X100_advance_assembler"},
		icon_size = 32,
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -10,
				pipe_connections = {{ type="input", position = {2, 0} }}
			},
				{
				production_type = "input",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -10,
				pipe_connections = {{ type="input", position = {-2, 0} }}
			},
		{
				production_type = "output",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 10,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},

		{
				production_type = "output",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 10,
				pipe_connections = {{ type="output", position = {0, -2} }}
			},

			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__X100_assembler__/graphics/entity/textur_X100_adv_assembler.png",
			priority = "high",
			width = 142,
			height = 113,
			frame_count = 32,
			line_length = 8,
			shift = {0.84, -0.09}
		},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		working_sound =
		{
			sound = {
				{
					filename = "__base__/sound/assembling-machine-t2-1.ogg",
					volume = 0.8
				},
				{
					filename = "__base__/sound/assembling-machine-t2-2.ogg",
					volume = 0.8
				},
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		crafting_categories = {"X100_assembler"},
		crafting_speed = 5.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1
		},
		energy_usage = "500kW",
		ingredient_count = 10,
		module_specification =
		{
			module_slots = 6
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	},
	
	
})