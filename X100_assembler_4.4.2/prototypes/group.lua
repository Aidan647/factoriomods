data:extend(
{
	{
		type = "item-subgroup",
		name = "underground-belt",
		order = "b-a",
		group = "logistics",
	},
	{
		type = "item-subgroup",
		name = "splitter",
		order = "b-b",
		group = "logistics",
	},
	{
		type = "item-subgroup",
		name = "loader",
		order = "b-c",
		group = "logistics",
	},
	{
		type = "item-group",
		name = "X100_group_assembler",
		order = "zzzzzzzzzzzz",
		icons ={
		{icon = "__X100_assembler__/graphics/technology/automation.png"},
		{icon = "__X100_assembler__/graphics/logo.png"}
		},
		icon_size = 128
	},
	{
		type = "item-subgroup",
		name = "X100_subgroup_assembler",
		group = "X100_group_assembler",
		order = "a"
	},
	{
		type = "item-group",
		name = "X100_group_furnace",
		order = "zzzzzzzzzzzz",
		icons ={
		{icon = "__X100_assembler__/graphics/technology/groupfurn.png"},
		{icon = "__X100_assembler__/graphics/logo.png"}
		},
		icon_size = 128
	},

	{
		type = "item-subgroup",
		name = "X100_subgroup_furnace",
		group = "X100_group_furnace",
		order = "a"
	},
})