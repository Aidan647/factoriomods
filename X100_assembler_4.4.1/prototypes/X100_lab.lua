data:extend({

	{
		type = "item",
		name = "X100_lab",
		icons ={
		{icon = "__base__/graphics/icons/lab.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = data.raw.item["lab"].subgroup,
		order = data.raw.item["lab"].order .. "z",
		place_result = "X100_lab",
		stack_size = 500
	},
	{
		type = "lab",
		name = "X100_lab",
		icons ={
		{icon = "__base__/graphics/icons/lab.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "X100_lab"},
		max_health = 150,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
		on_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/lab/lab.png",
					width = 98,
					height = 87,
					frame_count = 33,
					line_length = 11,
					animation_speed = 1 / 3,
					shift = util.by_pixel(0, 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/lab/hr-lab.png",
						width = 194,
						height = 174,
						frame_count = 33,
						line_length = 11,
						animation_speed = 1 / 3,
						shift = util.by_pixel(0, 1.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/lab/lab-integration.png",
					width = 122,
					height = 81,
					frame_count = 1,
					line_length = 1,
					repeat_count = 33,
					animation_speed = 1 / 3,
					shift = util.by_pixel(0, 15.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
						width = 242,
						height = 162,
						frame_count = 1,
						line_length = 1,
						repeat_count = 33,
						animation_speed = 1 / 3,
						shift = util.by_pixel(0, 15.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/lab/lab-shadow.png",
					width = 122,
					height = 68,
					frame_count = 1,
					line_length = 1,
					repeat_count = 33,
					animation_speed = 1 / 3,
					shift = util.by_pixel(13, 11),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
						width = 242,
						height = 136,
						frame_count = 1,
						line_length = 1,
						repeat_count = 33,
						animation_speed = 1 / 3,
						shift = util.by_pixel(13, 11),
						scale = 0.5,
						draw_as_shadow = true
					}
				}
			}
		},
		off_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/lab/lab.png",
					width = 98,
					height = 87,
					frame_count = 1,
					shift = util.by_pixel(0, 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/lab/hr-lab.png",
						width = 194,
						height = 174,
						frame_count = 1,
						shift = util.by_pixel(0, 1.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/lab/lab-integration.png",
					width = 122,
					height = 81,
					frame_count = 1,
					shift = util.by_pixel(0, 15.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
						width = 242,
						height = 162,
						frame_count = 1,
						shift = util.by_pixel(0, 15.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/lab/lab-shadow.png",
					width = 122,
					height = 68,
					frame_count = 1,
					shift = util.by_pixel(13, 11),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
						width = 242,
						height = 136,
						frame_count = 1,
						shift = util.by_pixel(13, 11),
						draw_as_shadow = true,
						scale = 0.5
					}
				}
			}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "1000kW",
		researching_speed = 100,
		inputs = {
			"tenemut",
			"dark-matter-scoop",
			"dark-matter-transducer",
			"matter-conduit"
		},	
		module_specification =
		{
			module_slots = 12,
			max_entity_info_module_icons_per_row = 6,
			max_entity_info_module_icon_rows = 2,
			module_info_icon_shift = {0, 0.9}
		}
	},
})