data:extend({
	{
		type = "recipe",
		name = "X100_Steam",
		category="X100_smelting",
		energy_required = 55,
		subgroup = "X100_subgroup_furnace",
		enabled = "true",
		ingredients =
		{
			{type="fluid", name="water", amount=500}
		},
		results=
		{
			{type="fluid", name="steam", amount=1000,temperature=99.5}
		}
	},
	{
		type = "recipe",
		name = "X100_lab",
		category="X100_smelting",
		energy_required = 55,
		subgroup = "X100_subgroup_furnace",
		enabled = "true",
		ingredients =
		{
			{type="item", name="lab", amount=100}
		},
		results=
		{
			{type="item", name="X100_lab", amount=1}
		}
	},
	 {
		type = "recipe",
		name = "X100_offshore_pump",
		enabled = "true",
		ingredients =
		{
			{type="item", name="X100_pipe", amount=2},
			{type="item", name="iron-gear-wheel", amount=5}
		},
		results=
		{
			{type="item", name="X100_offshore_pump", amount=1}
		}
	},
	 {
		type = "recipe",
		name = "X100_pump",
		enabled = "true",
		ingredients =
		{
			{type="item", name="X100_pipe", amount=2},
			{type="item", name="iron-gear-wheel", amount=5}
		},
		results=
		{
			{type="item", name="X100_pump", amount=1}
		}
	},
	{
		type = "recipe",
		name = "X100_storage_tank",
		enabled = "true",
		ingredients =
		{
			{type="item", name="storage-tank", amount=100}
		},
		results=
		{
			{type="item", name="X100_storage_tank", amount=1}
		}
	},
	{
		type = "recipe",
		name = "X100_refinery",
		enabled = "false",
		ingredients =
		{
			{type="item", name="iron-plate", amount=9},
			{type="item", name="X100_pipe", amount=9},
			{type="item", name="iron-gear-wheel", amount=5},
			{type="item", name="X100_advance_assembler", amount=2}
		},
		results=
		{
			{type="item", name="X100_refinery", amount=1}
		}
	},
})