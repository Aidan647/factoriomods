
data:extend(
{  
	{
		type = "boiler",
		name = "y_boiler_sh",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/boiler-sh_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_boiler_sh"},
		max_health = 350,
		corpse = "small-remnants",
		resistances = { { type = "fire", percent = 80 } },
		fast_replaceable_group = "pipe",
		collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		target_temperature=400,
		
		fluid_box =
		{
			base_area = 2,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				{ type = "input-output", position = { 0, -2} },
				{ type = "input-output", position = { 2,  0} },
				{ type = "input", position = { 0,  2} },
				{ type = "input-output", position = {-2,  0} }
			},
			production_type = "input-output",
			filter = "steam",
		},				
		
		output_fluid_box =
		{
			base_area = 2,
			height = 2,
			base_level = 1,
			pipe_connections =
			{
				{ type = "output", position = {0, -2}}
			},
			production_type = "output",
			--filter = "steam",
		},
		
		energy_consumption = "4.8MW",
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.70,
			fuel_inventory_size = 3,			
			emissions = 0.1 / 6.5,
			smoke = {{ name = "smoke", deviation = {0.1, 0.1}, frequency = 2.5,}}
		},		
		structure =
		{
			north =
			{
				filename = "__Yuoki__/graphics/entity/boiler-sh_256.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.39, -0.35}, scale = 0.5,
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/boiler-sh_256.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.39, -0.35}, scale = 0.5,
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/boiler-sh_256.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.39, -0.35}, scale = 0.5,
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/boiler-sh_256.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.39, -0.35}, scale = 0.5,
			},
		},
		fire = {},
		fire_glow = {},		
		burning_cooldown = 20,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},
	
	{
		type = "boiler",
		name = "y-boiler-iv",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/boiler-3m-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.3, mining_time = 0.5, result = "y-boiler-iv"},
		max_health = 350,
		corpse = "small-remnants",
		resistances = {{type = "fire",percent = 80}},
		mode = "output-to-separate-pipe",
		collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		target_temperature=250,
		fluid_box =
		{
			base_area = 3,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				--{ type = "input-output", position = { 0, -2.0} },
				{ type = "input-output", position = { 2,  0} },
				{ type = "input", position = { 0,  2} },
				{ type = "input-output", position = {-2,  0} }
			},
			production_type = "input-output",
			filter = "water",
		},
		output_fluid_box =
		{
			base_area = 3,
			height = 2,
			pipe_connections =
			{
				{ type = "output", position = {0, -2}}
			},
			production_type = "output",
			filter = "steam",
		},
				
		energy_consumption = "5.4MW",
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.75,
			fuel_inventory_size = 3,			
			emissions = 0.1 / 6.5,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 1.5,
				}
			}
		},
		structure =
		{
			north =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r18.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.375, -0.25}, scale = 0.5,
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r18.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.375, -0.25}, scale = 0.5,
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r18.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.375, -0.25}, scale = 0.5,
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r18.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				shift = {0.375, -0.25}, scale = 0.5,
			},
		},
		fire = {},
		fire_glow = {},
		burning_cooldown = 20,			
	},	
	
	{
		type = "boiler",
		name = "y-obninsk-reactor",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/obninsk-reactor-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.3, mining_time = 0.5, result = "y-obninsk-reactor"},
		max_health = 500,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 80}},
		mode = "output-to-separate-pipe",
		collision_box = {{-2.25, -2.25}, {2.25, 2.25}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		target_temperature = 500,

		fluid_box =
		{
			base_area = 50,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				
				--{ type = "input-output", position = { -1.0, -3.0} },
				--{ type = "input-output", position = {  1.0, -3.0} },
				{ type = "input-output", position = { -1,  3} },
				{ type = "input-output", position = { 1, 3} },				
			},
			production_type = "input-output",
			filter = "water",
		},
		output_fluid_box =
		{
			base_area = 5,
			height = 2,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ type = "output", position = { -1, -3} },
				{ type = "output", position = {  1, -3} },
			},
			production_type = "output",
			filter = "steam",
		},		
		
		fluid_input =
		{
			name = "water",
			amount = 0.0
		},
		fluid_output =
		{
			name = "steam",
			amount = 0.0
		},					
		
		energy_consumption = "25MW",
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.90,
			fuel_inventory_size = 1,
			fuel_inventory_count = 100,
			emissions = 0.001,
			smoke = {{	name = "smoke",deviation = {0.1, 0.1},frequency = 0.1,}}
		},
		structure =
		{
			north = { filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},},
			east = { filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},},
			south = { filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},	},
			west = { filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},},	
		},
		fire ={},
		fire_glow = {},
		burning_cooldown = 180,
	},
	
	
	-- big steam-turbine
	{
		type = "generator",
		name = "y-steam-turbine",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/steam_turbine_n3_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-steam-turbine"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 1.075,
		fluid_usage_per_tick = 1.29,
		maximum_temperature = 250,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
		selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
		fluid_box =
		{
			base_area = 3,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {0, 2.5} },
				{ type = "input-output", position = {0,-2.5} },
			},
			production_type = "input-output",
			filter = "steam",
		},
		fluid_input = 		
		{
			name = "steam", amount = 0.0, minimum_temperature = 100.0 ,		
			--{ name = "y-mechanical-force", amount = 0.0, minimum_temperature = 100.0 },		
			--{ name = "y_water_mix", amount = 0.0, minimum_temperature = 100.0 },		
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_v3_sheet.png",
			width = 320,
			height = 320,
			frame_count = 10,
			line_length = 5,
			shift = {0.475,-0.95},
			scale = 0.5,
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_h3_sheet.png",
			width = 320,
			height = 320,
			frame_count = 10,
			line_length = 5,
			shift = {1.0,-0.25},
			scale = 0.5,			
		},					
		smoke = {
			{ name = "smoke", north_position = {-1.1, -2.2}, east_position = {1.7, -1}, height = 0.3, deviation = {0.1, 0.1}, frequency = 0.4, 					
				height_deviation = 0.2,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.06, },
			{ name = "smoke", north_position = {1.1, -2.2}, east_position = {1.7, 0}, height = 0.3, deviation = {0.1, 0.1}, frequency = 0.4, 					
				height_deviation = 0.2,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.06, },
		},
	},   
	
	-- rensuir/obninsk-turbine 
	{
		type = "generator",
		name = "y-obninsk-turbine",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/rensuir-turbine_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-obninsk-turbine"},
		max_health = 500,
		corpse = "big-remnants",
		effectivity = 1.35,
		fluid_usage_per_tick = 1.41,
		maximum_temperature = 1000,
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			base_area = 4,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0,  2} },
				{ type = "input-output", position = {  0, -2} },				
			},
			production_type = "input-output",
			filter = "steam",
		},
		fluid_input = { name = "steam", amount = 0.0, minimum_temperature = 100.0 },		
		energy_source =
		{
			type = "electric",
			--usage_priority = "secondary-output"
			usage_priority = "primary-output",			
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/rens_ah.png",
			width = 120,
			height = 96,
			frame_count = 18,
			line_length = 9,
			shift = {0.0, 0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/rens_av.png",
			width = 96,
			height = 128,
			frame_count = 18,
			line_length = 18,
			shift = {0.0, 0.0}
		},
		pipes_horizontal =
		{
			filename = "__Yuoki__/graphics/entity/pipes_h96.png",
			priority = "high",
			width = 96,
			height = 44,
			shift = {0, 0}
		},
		pipes_vertical =
		{
			filename = "__Yuoki__/graphics/entity/pipes_v96.png",
			priority = "high",
			width = 44,
			height = 96
		},
	},     	
	
	{
		type = "generator",
		name = "y-notfall-generator-s2",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/lt-v2p-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-notfall-generator-s2"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 1.05,
		--fluid_usage_per_tick = 0.142,
		fluid_usage_per_tick = 0.426,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},		
		maximum_temperature = 250,		
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0, 1.5} },
				{ type = "input-output", position = {  0,-1.5} },				
			},
			production_type = "input-output",
			filter = "steam",
		},
		fluid_input = { name = "steam", amount = 0.0, minimum_temperature = 100.0 },		
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/ss800h_sheet.png",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {1.0, 0.325},
			scale = 0.5,
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/ss800v_sheet.png",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {0.5, 0.0},
			scale = 0.5,
		},
	},  

	
	-- small electric generator
	{
		type = "generator",
		name = "y-seg",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/seg-s_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-seg"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 0.98,
		fluid_usage_per_tick = 0.034,
		resistances = {{ type = "fire", percent = 70 }},
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		maximum_temperature = 220,		
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0, 1.5} },
				{ type = "input-output", position = {  0,-1.5} },				
			},
			production_type = "input-output",
			filter = "y-mechanical-force",
		},		
		fluid_input = { name = "y-mechanical-force", amount = 0.0, minimum_temperature = 70.0 },	
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-ha-s2.png",
			width = 80,
			height = 90,
			frame_count = 18,
			line_length = 18,
			shift = {0.1, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-va-s.png",
			width = 112,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.25}
		},
	},  
	-- small electric generator - primary reduced continuance
	{
		type = "generator",
		name = "y-seg-p",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/seg-p_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-seg-p"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 0.98,
		fluid_usage_per_tick = 0.034,
		resistances = {{ type = "fire", percent = 70 }},
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		maximum_temperature = 200,				
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0, 1.5} },
				{ type = "input-output", position = {  0,-1.5} },				
			},
			production_type = "input-output",
			filter = "y-mechanical-force",
		},
		fluid_input = { name = "y-mechanical-force", amount = 0.0, minimum_temperature = 70.0 },		
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-ha-p2.png",
			width = 80,
			height = 90,
			frame_count = 18,
			line_length = 18,
			shift = {0.1, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-va-p.png",
			width = 112,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.25}
		},
	},  	

	-- medium second electric generator 
	{
		type = "generator",
		name = "y-meg-s",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/meg-s-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-meg-s"},
		max_health = 400,
		corpse = "small-remnants",
		effectivity = 0.95,
		fluid_usage_per_tick = 0.1,
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		maximum_temperature = 250,				
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0, 1.5} },
				{ type = "input-output", position = {  0,-1.5} },				
			},
			production_type = "input-output",
			filter = "y-mechanical-force",
		},
		fluid_input = { name = "y-mechanical-force", amount = 0.0, minimum_temperature = 50.0 },			
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		--[[
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/meg-s-ha.png",
			width = 90,
			height = 108,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/meg-s-va.png",
			width = 100,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.125, 0.1}
		},
		]]
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-a-h-sheet.png",
			width = 80,
			height = 112,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, -0.08}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-a-v-sheet.png",
			width = 112,
			height = 80,
			frame_count = 16,
			line_length = 16,
			shift = {0.3, 0.0}
		},		
	},  	

	
	-- big electric generator
	{
		type = "generator",
		name = "y-beg",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/beg_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-beg"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 0.92,
		fluid_usage_per_tick = 0.1065,
		resistances = {{ type = "fire", percent = 70 }},
		collision_box = {{-2.3, -1.3}, {2.3, 1.3}},
		selection_box = {{-2.5, -1.5}, {2.5, 1.5}},
		maximum_temperature = 400,				
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0,  2} },
				{ type = "input-output", position = {  0, -2} },				
			},
			production_type = "input-output",
			filter = "y-mechanical-force",
		},
		fluid_input = { name = "y-mechanical-force", amount = 0.0, minimum_temperature = 70.0 },	
		energy_source = { type = "electric", usage_priority = "secondary-output", },
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/beg-hac.png",
			width = 96,
			height = 160,
			frame_count = 18,
			line_length = 18,
			shift = {0.0, 0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/beg-vac.png",
			width = 160,
			height = 120,
			frame_count = 18,
			line_length = 9,
			shift = {0.015, 0.0}
		},
	},  
	-- huge electric generator
	{
		type = "generator",
		name = "y-heg",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/heg-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-heg"},
		max_health = 500,
		corpse = "big-remnants",
		effectivity = 0.88,
		fluid_usage_per_tick = 0.1687,
		resistances = {{ type = "fire", percent = 70 }},
		collision_box = {{-3.3, -1.3}, {3.3, 1.3}},
		selection_box = {{-3.5, -1.5}, {3.5, 1.5}},
		maximum_temperature = 400,				
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output", position = {  0,  2} },
				{ type = "input-output", position = {  0, -2} },				
			},
			production_type = "input-output",
			filter = "y-mechanical-force",
		},
		fluid_input = { name = "y-mechanical-force", amount = 0.0, minimum_temperature = 70.0 },		
		energy_source = { type = "electric", usage_priority = "secondary-output", },
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/heg-ha.png",
			width = 100,
			height = 224,
			frame_count = 18,
			line_length = 18,
			shift = {0.0, 0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/heg-va.png",
			width = 224,
			height = 146,
			frame_count = 18,
			line_length = 9,
			shift = {0.00, -0.35}
		},
	},  	
	-- stirling solar-dish
	{
		type = "solar-panel",
		name = "y-stirling-solar-dish",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/stir-solar-dish-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-stirling-solar-dish"},
		max_health = 150,
		corpse = "medium-remnants",
		collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		energy_source =
		{
			type = "electric",
			usage_priority = "solar"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/entity/stir-solar-dish.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0,0},
		},
		production = "75kW"
	},	

	-- Alien-Solar 1
	{
		type = "solar-panel",
		name = "y_alien_solar",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/yi_alien_solar_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.5, mining_time = 1.0, result = "y_alien_solar"},
		max_health = 500,
		corpse = "medium-remnants",
		collision_box = {{-3.7, -3.7}, {3.7, 3.7}},
		selection_box = {{-4, -4}, {4, 4}},
		energy_source =
		{
			type = "electric",
			usage_priority = "solar"
		},
		
		picture =
		{		
			filename = "__Yuoki__/graphics/entity/yi_alien_solar.png",
			priority = "high",
			width = 384,
			height = 384,
			shift = {2,0},
		},		
		production = "2400kW"
	},	
	
	-- Alien-Solar 2
	{
		type = "solar-panel",
		name = "y_alien_solar2",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/yi_alien_solar2_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.5, mining_time = 1.0, result = "y_alien_solar2"},
		max_health = 500,
		corpse = "medium-remnants",
		collision_box = {{-4.7, -4.7}, {4.7, 4.7}},
		selection_box = {{-5, -5}, {5, 5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "solar"
		},
		
		picture =
		{		
			filename = "__Yuoki__/graphics/entity/yi_alien_solar2.png",
			priority = "high",
			width = 448,
			height = 448,
			shift = {2,0},
		},		
		production = "5000kW"
	},	
	
	
})


