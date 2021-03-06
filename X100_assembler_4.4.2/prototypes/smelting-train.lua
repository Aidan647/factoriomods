data:extend(
{
	{
		type = "equipment-grid",
		name = "X100-smelting-locomotive",
		width = 20,
		height = 20,
		equipment_categories = {"armor"} --"X100-energy", "X100-heavy-defense", "X100-movement"
	},
	{
		type = "equipment-grid",
		name = "X100-smelting-wagon",
		width = 20,
		height = 20,
		equipment_categories = {"armor"}--"X100-energy", "X100-repair", "X100-heavy-defense", "X100-construction", "X100-movement"
	},
	{
		type = "item-with-entity-data",
		name = "X100-locomotive-1",
		icons ={
		{icon = "__X100_assembler__/graphics/icon/smelting-loco-1.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "c",
		place_result = "X100-locomotive-1",
		stack_size = 200
	},
	{
		type = "locomotive",
		name = "X100-locomotive-1",
		icon = "__X100_assembler__/graphics/icon/smelting-loco-1.png",
	icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "X100-locomotive-1"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 2500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		--alert_icon_shift = util.by_pixel(0, -24),
		weight = 200,
		max_speed = 6,
		max_power = "500kW",
		reversing_power_modifier = 1,
		braking_force = 20,
		friction_force = 1,
		vertical_selection_shift = -0.5,
		air_resistance = 0, -- this is a percentage of current speed that will be subtracted
		connection_distance = 3,
		joint_distance = 4,
		energy_per_hit_point = 5,
		equipment_grid = "X100-smelting-locomotive",
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 50
			},
			{
				type = "physical",
				decrease = 15,
				percent = 30
			},
			{
				type = "impact",
				decrease = 50,
				percent = 60
			},
			{
				type = "explosion",
				decrease = 15,
				percent = 30
			},
			{
				type = "acid",
				decrease = 10,
				percent = 20
			}
		},
		burner =
		{
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 3,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0.5, 2},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				},
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {-0.5, 2},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				},
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0.5, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				},
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {-0.5, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				}
			}
		},
		front_light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -16},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -16},
				size = 2,
				intensity = 0.6
			}
		},
		back_light = rolling_stock_back_light(),
		stand_by_light = rolling_stock_stand_by_light(),
		color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
		pictures =
		{
			layers =
			{
				{
					priority = "very-low",
					width = 256,
					height = 256,
					direction_count = 128,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-loco1/smelting-loco1-1.png",
						"__X100_assembler__/graphics/entity/smelting-loco1/smelting-loco1-2.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.0, -0.75}
				},
				{
					priority = "very-low",
					flags = { "compressed" },
					width = 256,
					height = 256,
					direction_count = 128,
					draw_as_shadow = true,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-loco1/smelting-loco1-shadow-1.png",
						"__X100_assembler__/graphics/entity/smelting-loco1/smelting-loco1-shadow-2.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.5, -0.5}
				}
			}
		},
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 50,	--125
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, -1}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 50,	--125
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, -1}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-engine.ogg",
				volume = 0.4
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
		sound_minimum_speed = 0.5,
	},
	{
		type = "item-with-entity-data",
		name = "X100-locomotive-tender",
		icons ={
		{icon = "__X100_assembler__/graphics/icon/smelting-loco-tender.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "c",
		place_result = "X100-locomotive-tender",
		stack_size = 200
	},
	{
		type = "locomotive",
		name = "X100-locomotive-tender",
		icon = "__X100_assembler__/graphics/icon/smelting-loco-tender.png",
	icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "X100-locomotive-tender"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 2500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		weight = 6000,
		max_speed = 3,
		max_power = "15000kW",
		reversing_power_modifier = 1,
		braking_force = 25,
		friction_force = 1,
		vertical_selection_shift = -0.5,
		air_resistance = 0, -- this is a percentage of current speed that will be subtracted
		connection_distance = 3,
		joint_distance = 4,
		energy_per_hit_point = 5,
		equipment_grid = "X100-smelting-locomotive",
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 50
			},
			{
				type = "physical",
				decrease = 15,
				percent = 30
			},
			{
				type = "impact",
				decrease = 50,
				percent = 60
			},
			{
				type = "explosion",
				decrease = 15,
				percent = 30
			},
			{
				type = "acid",
				decrease = 10,
				percent = 20
			}
		},
		burner =
		{
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 3,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0.5, 2},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				},
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {-0.5, 2},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				},
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0.5, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				},
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {-0.5, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				}
			}
		},
		front_light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -16},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -16},
				size = 2,
				intensity = 0.6
			}
		},
		back_light = rolling_stock_back_light(),
		stand_by_light = rolling_stock_stand_by_light(),
		color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
		pictures =
		{
			layers =
			{
				{
					priority = "very-low",
					width = 256,
					height = 256,
					direction_count = 128,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-loco2/smelting-loco2-1.png",
						"__X100_assembler__/graphics/entity/smelting-loco2/smelting-loco2-2.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.0, -0.75}
				},
				{
					priority = "very-low",
					flags = { "compressed" },
					width = 256,
					height = 256,
					direction_count = 128,
					draw_as_shadow = true,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-loco2/smelting-loco2-shadow-1.png",
						"__X100_assembler__/graphics/entity/smelting-loco2/smelting-loco2-shadow-2.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.5, -0.5}
				}
			}
		},
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- front left side
			{
				type = "create-trivial-smoke",
				repeat_count = 50,	--125
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, -1}}
			},
			-- front right side
			{
				type = "create-trivial-smoke",
				repeat_count = 50,	--125
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, -1}}
			},
			-- rear left side
			{
				type = "create-trivial-smoke",
				repeat_count = 50,	--125
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, 2.7}, {-0.3, 1}}
			},
			-- rear right side
			{
				type = "create-trivial-smoke",
				repeat_count = 50,	--125
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, 2.7}, {0.75, 1}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-engine.ogg",
				volume = 0.4
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
		sound_minimum_speed = 0.5;
	},
	{
		type = "item-with-entity-data",
		name = "X100-wagon-1",
		icons ={
		{icon = "__X100_assembler__/graphics/icon/smelting-wagon1.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "c",
		place_result = "X100-wagon-1",
		stack_size = 200
	},
	{
		type = "cargo-wagon",
		name = "X100-wagon-1",
		icon = "__X100_assembler__/graphics/icon/smelting-wagon1.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 1029,
		minable = {mining_time = 1, result = "X100-wagon-1"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1000,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
		selection_box = {{-1, -2.703125}, {1, 3.296875}},
		vertical_selection_shift = -0.796875,
		weight = 3000,
		max_speed = 999,
		braking_force = 3,
		friction_force = 1,
		air_resistance = 0.01,
		connection_distance = 3,
		joint_distance = 4,
		energy_per_hit_point = 5,
		equipment_grid = "X100-smelting-wagon",
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 50
			},
			{
				type = "physical",
				decrease = 15,
				percent = 30
			},
			{
				type = "impact",
				decrease = 50,
				percent = 60
			},
			{
				type = "explosion",
				decrease = 15,
				percent = 30
			},
			{
				type = "acid",
				decrease = 10,
				percent = 20
			}
		},
		back_light = rolling_stock_back_light(),
		stand_by_light = rolling_stock_stand_by_light(),
		color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
		pictures =
		{
			layers =
			{
				{
					priority = "very-low",
					width = 256,
					height = 256,
					direction_count = 64,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-wagon1/smelting-wagon1-1.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.0, -0.75},
					back_equals_front = true,
				},
				{
					priority = "very-low",
					flags = { "compressed" },
					width = 256,
					height = 256,
					direction_count = 64,
					draw_as_shadow = true,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-wagon1/smelting-wagon1-shadow-1.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.5, -0.5}
				}
			}
		},
		horizontal_doors =
		{
			layers =
			{
				{
					filename = "__X100_assembler__/graphics/entity/smelting-wagon1/smelting-wagon1-door-horizontal.png",
					line_length = 8,
					width = 256,
					height = 256,
					frame_count = 8,
					shift = {0.0, -0.75},
				},
			}
		},
		vertical_doors =
		{
			layers =
			{
				{
					filename = "__X100_assembler__/graphics/entity/smelting-wagon1/smelting-wagon1-door-vertical.png",
					line_length = 8,
					width = 256,
					height = 256,
					frame_count = 8,
					shift = {0.0, -0.75},
				},
			}
		},
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.6
			},
			match_volume_to_activity = true
		},
		crash_trigger = crash_trigger(),
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
	},
{
	type = "item-with-entity-data",
	name = "X100-wagon-2",
	icons ={
		{icon = "__X100_assembler__/graphics/icon/smelting-wagon2.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "transport",
	order = "c",
	place_result = "X100-wagon-2",
	stack_size = 200
},
	
{
	type = "fluid-wagon",
	name = "X100-wagon-2",
	icon = "__X100_assembler__/graphics/icon/smelting-wagon2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
	minable = {mining_time = 1, result = "X100-wagon-2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 4500,
	total_capacity = 25000 * 4,
	capacity = 25000 * 4,
	weight = 3000,
	max_speed = 999,
	braking_force = 4.5,
	friction_force = 1,
	air_resistance = 0.01,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1, -2.703125}, {1, 3.296875}},
	gui_front_tank =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_center_tank =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_back_tank =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_connect_front_center_tank =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_connect_center_back_tank =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_front_center_tank_indiciation =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/1.png",
		width = 32,
		height = 32,
		flags = {"icon"}
	},
	gui_center_back_tank_indiciation =
	{
		filename = "__base__/graphics/entity/fluid-wagon/gui/2.png",
		width = 32,
		height = 32,
		flags = {"icon"}
	},
	vertical_selection_shift = -0.796875,
	connection_distance = 3,
	joint_distance = 4,
	energy_per_hit_point = 6,
	resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 50
			},
			{
				type = "physical",
				decrease = 15,
				percent = 30
			},
			{
				type = "impact",
				decrease = 50,
				percent = 60
			},
			{
				type = "explosion",
				decrease = 15,
				percent = 30
			},
			{
				type = "acid",
				decrease = 10,
				percent = 20
			}
		},
	back_light = rolling_stock_back_light(),
	stand_by_light = rolling_stock_stand_by_light(),
	color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
	pictures =
	{
			layers =
			{
				{
					priority = "very-low",
					width = 256,
					height = 256,
					direction_count = 64,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-wagon2/smelting-wagon1-1.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.0, -0.75},
					back_equals_front = true,
				},
				{
					priority = "very-low",
					flags = { "compressed" },
					width = 256,
					height = 256,
					direction_count = 64,
					draw_as_shadow = true,
					filenames =
					{
						"__X100_assembler__/graphics/entity/smelting-wagon2/smelting-wagon1-shadow-1.png",
					},
					line_length = 8,
					lines_per_file = 8,
					shift = {0.5, -0.5}
				}
			}
		},
		horizontal_doors =
		{
			layers =
			{
				{
					filename = "__X100_assembler__/graphics/entity/smelting-wagon2/smelting-wagon1-door-horizontal.png",
					line_length = 8,
					width = 256,
					height = 256,
					frame_count = 8,
					shift = {0.0, -0.75},
				},
			}
		},
		vertical_doors =
		{
			layers =
			{
				{
					filename = "__X100_assembler__/graphics/entity/smelting-wagon2/smelting-wagon1-door-vertical.png",
					line_length = 8,
					width = 256,
					height = 256,
					frame_count = 8,
					shift = {0.0, -0.75},
				},
			}
		},
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.6
			},
			match_volume_to_activity = true
		},
		crash_trigger = crash_trigger(),
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
	},
}
)
