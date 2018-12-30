data:extend({
{
		type = "recipe",
		name = "green_screen",
		energy_required = 0.01,
		enabled = true,
		ingredients =
		{
			{"steel-plate", 1}
		},
		result= "green_screen"
	},
	{
		type = "item",
		name = "green_screen",
	icons ={
		{icon = "__base__/graphics/icons/concrete.png"},
		{icon = "__X100_assembler__/graphics/icons.png"}
	},
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "terrain",
		order = "b[green_screen]-a[plain]",
		stack_size = 200,
		place_as_tile =
		{
			result = "green_screen",
			condition_size = 1,
			condition = { "water-tile" }
		}
	},
{
	type = "tile",
	name = "green_screen",
	needs_correction = false,
	minable = {hardness = 0.2, mining_time = 0.5, result = "concrete"},
	mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
	collision_mask = {"ground-tile"},
	walking_speed_modifier = 1.4,
	layer = 61,
	transition_overlay_layer_offset = 2, -- need to render border overlay on top of hazard-concrete
	decorative_removal_probability = 0.25,
	variants =
	{
	main =
	{
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-dummy.png",
		count = 1,
		size = 1
		},
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-dummy.png",
		count = 1,
		size = 2,
		probability = 0.39
		},
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-dummy.png",
		count = 1,
		size = 4,
		probability = 1
		}
	},
	inner_corner =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-inner-corner.png",
		count = 16,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
		count = 16,
		scale = 0.5
		}
	},
	inner_corner_mask =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
		count = 16,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-inner-corner-mask.png",
		count = 16,
		scale = 0.5
		}
	},

	outer_corner =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-outer-corner.png",
		count = 8,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
		count = 8,
		scale = 0.5
		}
	},
	outer_corner_mask =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
		count = 8,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-outer-corner-mask.png",
		count = 8,
		scale = 0.5
		}
	},

	side =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-side.png",
		count = 16,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-side.png",
		count = 16,
		scale = 0.5
		}
	},
	side_mask =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-side-mask.png",
		count = 16,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-side-mask.png",
		count = 16,
		scale = 0.5
		}
	},

	u_transition =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-u.png",
		count = 8,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-u.png",
		count = 8,
		scale = 0.5
		}
	},
	u_transition_mask =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-u-mask.png",
		count = 8,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-u-mask.png",
		count = 8,
		scale = 0.5
		}
	},

	o_transition =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-o.png",
		count = 4,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-o.png",
		count = 4,
		scale = 0.5
		}
	},
	o_transition_mask =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete-o-mask.png",
		count = 4,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete-o-mask.png",
		count = 4,
		scale = 0.5
		}
	},


	material_background =
	{
		picture = "__X100_assembler__/graphics/terrain/concrete/concrete.png",
		count = 8,
		hr_version =
		{
		picture = "__X100_assembler__/graphics/terrain/concrete/hr-concrete.png",
		count = 8,
		scale = 0.5
		}
	}
	},

	transitions = concrete_transitions,
	transitions_between_transitions = concrete_transitions_between_transitions,

	walking_sound =
	{
	{
		filename = "__base__/sound/walking/concrete-01.ogg",
		volume = 1.0
	},
	{
		filename = "__base__/sound/walking/concrete-02.ogg",
		volume = 1.0
	},
	{
		filename = "__base__/sound/walking/concrete-03.ogg",
		volume = 1.0
	},
	{
		filename = "__base__/sound/walking/concrete-04.ogg",
		volume = 1.0
	}
	},
	map_color={r=100, g=100, b=100},
	ageing=0,
	vehicle_friction_modifier = concrete_vehicle_speed_modifier
	}
})