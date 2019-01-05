data:extend({
	{
		type = "recipe-category",
		name = "X100_smelting"
	},
	-- Item
	{
		type = "item",
		name = "X100_furnace",
		icons ={
		{icon = "__X100_assembler__/graphics/icon/electric-furnace.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
		},
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "smelting-machine",
		order = "zz",
		place_result = "X100_furnace",
		stack_size = 200
	},
{
		type = "furnace",
		name = "X100_furnace",
		icon = "__X100_assembler__/graphics/icon/electric-furnace.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
				mining_time = 1,
				result = "X100_furnace"
		},
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		light =
		{
				intensity = 1,
				size = 10
		},
		resistances =
		{
				{
					type = "fire",
					percent = 80
				}
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	module_specification =
		{
			module_slots = 4,
			module_info_icon_shift = {0, 0.8}
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		crafting_categories = {"X100_smelting"},
		result_inventory_size = 5,
		crafting_speed = 50,
		ingredient_count = 10,
		energy_usage = "1MW",
		source_inventory_size = 1,
		fast_replaceable_group = "reverse-factory",
		energy_source =
		{
				type = "electric",
				usage_priority = "secondary-input",
				emissions = 0.005
		},
		working_sound =
		{
				sound =
				{
						filename = "__base__/sound/electric-furnace.ogg",
						volume = 0.7
				},
				apparent_volume = 1.5
		},
		animation =
		{
			layers =
			{
				{
					filename = "__X100_assembler__/graphics/entity/electric-furnace/electric-furnace-base.png",
					priority = "high",
					width = 129,
					height = 100,
					frame_count = 1,
					shift = {0.421875, 0},
					hr_version =
					{
						filename = "__X100_assembler__/graphics/entity/electric-furnace/hr-electric-furnace.png",
						priority = "high",
						width = 239,
						height = 219,
						frame_count = 1,
						shift = util.by_pixel(0.75, 5.75),
						scale = 0.5
					}
				},
				{
					filename = "__X100_assembler__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
					priority = "high",
					width = 129,
					height = 100,
					frame_count = 1,
					shift = {0.421875, 0},
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__X100_assembler__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
						priority = "high",
						width = 227,
						height = 171,
						frame_count = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(11.25, 7.75),
						scale = 0.5
					}
				}
			}
		},
		working_visualisations =
		{
			{
				animation =
				{
					filename = "__X100_assembler__/graphics/entity/electric-furnace/electric-furnace-heater.png",
					priority = "high",
					width = 25,
					height = 15,
					frame_count = 12,
					animation_speed = 0.5,
					shift = {0.015625, 0.890625},
					hr_version =
					{
						filename = "__X100_assembler__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
						priority = "high",
						width = 60,
						height = 56,
						frame_count = 12,
						animation_speed = 0.5,
						shift = util.by_pixel(1.75, 32.75),
						scale = 0.5
					}
				},
				light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
			},
			{
				animation =
				{
					filename = "__X100_assembler__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
					priority = "high",
					width = 19,
					height = 13,
					frame_count = 4,
					animation_speed = 0.5,
					shift = {-0.671875, -0.640625},
					hr_version =
					{
						filename = "__X100_assembler__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
						priority = "high",
						width = 37,
						height = 25,
						frame_count = 4,
						animation_speed = 0.5,
						shift = util.by_pixel(-20.5, -18.5),
						scale = 0.5
					}
				}
			},
			{
				animation =
				{
					filename = "__X100_assembler__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
					priority = "high",
					width = 12,
					height = 9,
					frame_count = 4,
					animation_speed = 0.5,
					shift = {0.0625, -1.234375},
					hr_version =
					{
						filename = "__X100_assembler__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
						priority = "high",
						width = 23,
						height = 15,
						frame_count = 4,
						animation_speed = 0.5,
						shift = util.by_pixel(3.5, -38),
						scale = 0.5
					}
				}
			}
		},
	fluid_boxes =
		{
			{
				production_type = "output",
		pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = 100,
		base_area = 100,
				pipe_connections = {{type="output",position = {0, -2} }}
			},
			{
				production_type = "input",
		pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_level = -100,
		base_area = 100,
				pipe_connections = {{type="input", position = {0, 2} }}
			}
		}
}
})