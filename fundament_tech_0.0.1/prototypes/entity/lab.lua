data:extend({
	{
		type = "lab",
		name = "tech-lab",
		icon = "__base__/graphics/icons/lab.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "tech-lab"},
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
						scale = 0.5 / 1.5,
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
		energy_usage = "100kW",
		researching_speed = 2,
		inputs =
		{
			"science-pack-1",
			"science-pack-2",
			"science-pack-3",
			"military-science-pack",
			"production-science-pack",
			"high-tech-science-pack",
			"space-science-pack",
			"science-micro-transport",
			"science-micro-mining",
			"science-micro-warfare",
			"science-micro-space",
			"science-nano-transport",
			"science-nano-mining",
			"science-nano-warfare",
			"science-nano-space"
		},
		module_specification =
		{
			module_slots = 4,
			max_entity_info_module_icons_per_row = 2,
			max_entity_info_module_icon_rows = 2,
			module_info_icon_shift = {0, 0.6}
		}
	},
-------------------------------------------------------------------------------------------------------------------------------
	{
		type = "assembling-machine",
		name = "research-center-micro",
		icon = "__base__/graphics/icons/electric-furnace.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "research-center-micro"},
		max_health = 350,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		resistances =
		{
			{
				type = "fire",
				percent = 40
			}
		},
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		module_specification =
		{
			module_slots = 3,
			module_info_icon_shift = {-0, 0.6}
		}, 
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		crafting_categories = {"science-micro"},
		crafting_speed = 1,
		energy_usage = "100kW",
		ingredient_count = 5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/electric-furnace.ogg",
				volume = 0.7
			},
			apparent_volume = 1.5
		},
		always_draw_idle_animation = true,
		idle_animation =
		{
			layers =
			{
				-- Centrifuge A
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
					priority = "high",
					line_length = 8,
					width = 119,
					height = 107,
					frame_count = 64,
					animation_speed = 2,
					scale = 1 / 1.5,
					shift = util.by_pixel(-0.5 / 1.5, -26.5 / 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
						priority = "high",
						scale = 0.5 / 1.5,
						line_length = 8,
						width = 237,
						height = 214,
						frame_count = 64,
						animation_speed = 2,
						shift = util.by_pixel(-0.25 / 1.5, -26.5 / 1.5)
					}
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
					draw_as_shadow = true,
					priority = "high",
					line_length = 8,
					width = 132,
					height = 74,
					frame_count = 64,
					animation_speed = 2,
					scale = 1 / 1.5,
					shift = util.by_pixel(20 / 1.5, -10 / 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
						draw_as_shadow = true,
						priority = "high",
						scale = 0.5 / 1.5,
						line_length = 8,
						width = 279,
						height = 152,
						frame_count = 64,
						animation_speed = 2,
						shift = util.by_pixel(16.75 / 1.5, -10 / 1.5)
					}
				},
				-- Centrifuge B
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
					priority = "high",
					line_length = 8,
					width = 78,
					height = 117,
					frame_count = 64,
					animation_speed = 2,
					scale = 1 / 1.5,
					shift = util.by_pixel(23 / 1.5, 6.5 / 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
						priority = "high",
						scale = 0.5 / 1.5,
						line_length = 8,
						width = 156,
						height = 234,
						frame_count = 64,
						animation_speed = 2,
						shift = util.by_pixel(23 / 1.5, 6.5 / 1.5)
					}
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
					draw_as_shadow = true,
					priority = "high",
					line_length = 8,
					width = 124,
					height = 74,
					frame_count = 64,
					animation_speed = 2,
					scale = 1 / 1.5,
					shift = util.by_pixel(63 / 1.5, 16 / 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
						draw_as_shadow = true,
						priority = "high",
						scale = 0.5 / 1.5,
						line_length = 8,
						width = 251,
						height = 149,
						frame_count = 64,
						animation_speed = 2,
						shift = util.by_pixel(63.25 / 1.5, 15.25 / 1.5)
					}
				},
				-- Centrifuge A
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
					priority = "high",
					line_length = 8,
					width = 70,
					height = 123,
					frame_count = 64,
					animation_speed = 2,
					scale = 1 / 1.5,
					shift = util.by_pixel(-26 / 1.5, 3.5 / 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
						priority = "high",
						scale = 0.5 / 1.5,
						line_length = 8,
						width = 139,
						height = 246,
						frame_count = 64,
						animation_speed = 2,
						shift = util.by_pixel(-26.25 / 1.5, 3.5 / 1.5)
					}
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
					priority = "high",
					draw_as_shadow = true,
					line_length = 8,
					width = 108,
					height = 54,
					frame_count = 64,
					animation_speed = 2,
					scale = 1 / 1.5,
					shift = util.by_pixel(6 / 1.5, 27 / 1.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
						priority = "high",
						draw_as_shadow = true,
						scale = 0.5 / 1.5,
						line_length = 8,
						width = 230,
						height = 124,
						frame_count = 64,
						animation_speed = 2,
						shift = util.by_pixel(8.5 / 1.5, 23.5 / 1.5)
					}
				}
			}
		},
		fast_replaceable_group = "science-micro"
	}
})