data:extend({
	{
		type = "item-group",
		name = "X100_group_replicator",
		order = "zz",
		icons ={
		{icon = "__dark-matter-replicators__/graphics/icons/category-replicators.png"},
		{icon = "__X100_assembler__/graphics/logo.png"}
		},
		icon_size = 128
	},
	{
		type = "item-subgroup",
		name = "X100_subgroup_replicator",
		group = "X100_group_replicator",
		order = "a"
	}, 
	{
		type = "recipe-category",
		name = "X100_replicator"
	},
	-- Item
	{
		type = "item",
		name = "X100_replicator",
		icons ={
		{icon = "__dark-matter-replicators__/graphics/icons/replicator-5.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "e",
		place_result = "X100_replicator",
		stack_size = 200
	},

	{
		type = "assembling-machine",
		name = "X100_replicator",
		icons ={
		{icon = "__dark-matter-replicators__/graphics/icons/replicator-5.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "X100_replicator"},
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
			filename = "__dark-matter-replicators__/graphics/entity/replicator-5.png",
			priority = "high",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 0.33333333333333,
			shift = {0.13333333333333,0.1},
			scale = 0.66666666666667,
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
		crafting_categories = {"X100_replicator", "replication-1", "replication-2", "replication-3", "replication-4","replication-5"},
		crafting_speed = 100000.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0
		},
		energy_usage = "1TW",
		ingredient_count = -0,
		module_specification =
		{
			module_slots = 6
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	},
		{
		type = "item",
		name = "X100_replicator_lab",
		icons ={
		{icon = "__dark-matter-replicators__/graphics/icons/replication-lab.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = data.raw.item["lab"].subgroup,
		order = data.raw.item["lab"].order .. "z",
		place_result = "X100_replicator_lab",
		stack_size = 500
	},
	{
		type = "lab",
		name = "X100_replicator_lab",
		icons ={
		{icon = "__dark-matter-replicators__/graphics/icons/replication-lab.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "X100_replicator_lab"},
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
		inputs =
		{
			"science-pack-1",
			"science-pack-2",
			"science-pack-3",
			"military-science-pack",
			"production-science-pack",
			"high-tech-science-pack",
			"space-science-pack"
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
-- ezlib.log.print(data.raw["assembling-machine"]["replicator-5"])