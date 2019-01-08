data:extend({
{
	type = "item",
	name = "X100_offshore_pump",
	icons ={
	{icon = "__base__/graphics/icons/offshore-pump.png"},
	{icon = "__X100_assembler__/graphics/icons.png"}
	},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "e",
	place_result = "X100_offshore_pump",
	stack_size = 200
},
{
		type = "offshore-pump",
		name = "X100_offshore_pump",
		icons ={
		{icon = "__base__/graphics/icons/offshore-pump.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "filter-directions"},
		collision_mask = { "ground-tile", "object-layer" },
		fluid_box_tile_collision_test = { "ground-tile" },
		adjacent_tile_collision_test = { "water-tile" },
		minable = {mining_time = 1, result = "X100_offshore_pump"},
		max_health = 150,
		corpse = "small-remnants",
		fluid = "water",
		resistances =
		{
			{
				type = "fire",
				percent = 70
			},
			{
				type = "impact",
				percent = 30
			}
		},
		collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
		selection_box = {{-1, -1.49}, {1, 0.49}},
		fluid_box =
		{
			base_area = 10,
			base_level = 10,
			pipe_covers = pipecoverspictures(),
			production_type = "output",
			pipe_connections =
			{
				{
					position = {0, 1},
					type = "output"
				}
			}
		},
		pumping_speed = 200000,
		tile_width = 1,
		tile_height = 1,
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			north =
			{
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {0.90625, 0.0625},
				width = 160,
				height = 102
			},
			east =
			{
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {0.90625, 0.0625},
				x = 160,
				width = 160,
				height = 102
			},
			south =
			{
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {0.90625, 0.65625},
				x = 320,
				width = 160,
				height = 102
			},
			west =
			{
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {1.0, 0.0625},
				x = 480,
				width = 160,
				height = 102
			}
		},
		placeable_position_visualization =
		{
			filename = "__core__/graphics/cursor-boxes-32x32.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5,
			x = 3*64
		},
		circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
		circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance

	},
	{
	type = "item",
	name = "X100_pump",
	icons ={
	{icon = "__base__/graphics/icons/pump.png"},
	{icon = "__X100_assembler__/graphics/icons.png"}
	},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy-pipe-distribution",
	order = "e",
	place_result = "X100_pump",
	stack_size = 200
},
		{
		type = "pump",
		name = "X100_pump",
		icon = "__base__/graphics/icons/pump.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "X100_pump"},
		max_health = 180,
		fast_replaceable_group = "pipe",
		corpse = "small-remnants",
		collision_box = {{-0.29, -0.79}, {0.29, 0.79}},
		selection_box = {{-0.5, -1}, {0.5, 1}},
		resistances =
		{
			{
				type = "fire",
				percent = 80
			},
			{
				type = "impact",
				percent = 30
			}
		},
		fluid_box =
		{
			base_area = 10,
			height = 2,
			pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {0, -1.5}, type="output" },
				{ position = {0, 1.5}, type="input" }
			}
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.01 / 2.5
		},
		energy_usage = "30kW",
		pumping_speed = 200000,
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

		animations =
		{
			north =
			{
				filename = "__base__/graphics/entity/pump/pump-north.png",
				width = 53,
				height = 79,
				line_length =8,
				frame_count =32,
				animation_speed = 0.5,
				shift = util.by_pixel(8.000, 7.500),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-north.png",
					width = 103,
					height = 164,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					animation_speed = 0.5,
					shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
				}
			},
			east =
			{
				filename = "__base__/graphics/entity/pump/pump-east.png",
				width = 66,
				height = 60,
				line_length =8,
				frame_count =32,
				animation_speed = 0.5,
				shift = util.by_pixel(0, 4),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-east.png",
					width = 130,
					height = 109,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					animation_speed = 0.5,
					shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
				}
			},

			south =
			{
				filename = "__base__/graphics/entity/pump/pump-south.png",
				width = 62,
				height = 87,
				line_length =8,
				frame_count =32,
				animation_speed = 0.5,
				shift = util.by_pixel(13.5, 0.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-south.png",
					width = 114,
					height = 160,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					animation_speed = 0.5,
					shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
				}
			},
			west =
			{
				filename = "__base__/graphics/entity/pump/pump-west.png",
				width = 69,
				height = 51,
				line_length =8,
				frame_count =32,
				animation_speed = 0.5,
				shift = util.by_pixel(0.5, -0.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-west.png",
					width = 131,
					height = 111,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					animation_speed = 0.5,
					shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
				}
			}
		},

		fluid_wagon_connector_frame_count = 35,

		fluid_wagon_connector_graphics = require("prototypes.pump-connector"),

		fluid_animation =
		{
			north =
			{
				filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
				apply_runtime_tint = true,
				width = 20,
				height = 13,
				line_length =8,
				frame_count =32,
				shift = util.by_pixel(-0.500, -14.500),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-north-liquid.png",
					apply_runtime_tint = true,
					width = 38,
					height = 22,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					shift = util.by_pixel(-0.250, -16.750)
				}
			},

			east =
			{
				filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
				width = 18,
				height = 24,
				line_length =8,
				frame_count =32,
				shift = util.by_pixel(6.000, -8.000),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-east-liquid.png",
					width = 35,
					height = 46,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					shift = util.by_pixel(6.250, -8.500)
				}
			},

			south =
			{
				filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
				width = 26,
				height = 55,
				line_length =8,
				frame_count =32,
				shift = util.by_pixel(3.500, 6.500),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-south-liquid.png",
					width = 38,
					height = 45,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					shift = util.by_pixel(0.500, -9.250)
				}
			},
			west =
			{
				filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
				width = 18,
				height = 24,
				line_length =8,
				frame_count =32,
				shift = util.by_pixel(-6.000, -9.000),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-west-liquid.png",
					width = 35,
					height = 47,
					scale = 0.5,
					line_length =8,
					frame_count =32,
					shift = util.by_pixel(-6.500, -9.500)
				}
			}
		},

		glass_pictures =
		{
			north =
			{
				filename = "__base__/graphics/entity/pump/pump-north-glass.png",
				width = 32,
				height = 64,
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-north-glass.png",
					width = 64,
					height = 128,
					scale = 0.5
				}
			},
			east =
			{
				filename = "__base__/graphics/entity/pump/pump-east-glass.png",
				width = 32,
				height = 32,
				shift = util.by_pixel(0.000, -16.000),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-east-glass.png",
					width = 128,
					height = 192,
					scale = 0.5
				}
			},
			south =
			{
				filename = "__base__/graphics/entity/pump/pump-south-glass.png",
				width = 32,
				height = 64,
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-south-glass.png",
					width = 64,
					height = 128,
					scale = 0.5
				}
			},
			west =
			{
				filename = "__base__/graphics/entity/pump/pump-west-glass.png",
				width = 32,
				height = 96,
				shift = util.by_pixel(0.000, 15.000),
				hr_version =
				{
					filename = "__base__/graphics/entity/pump/hr-pump-west-glass.png",
					width = 192,
					height = 192,
					scale = 0.5,
					shift = util.by_pixel(-16.000, 0.000)
				}
			}
		},

		circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
		circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance
	},
	
})