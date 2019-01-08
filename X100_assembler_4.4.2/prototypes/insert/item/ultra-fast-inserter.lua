data:extend({  
    {
        type = "item",
        name = "X100-inserter",
		icons ={
			{icon = "__X100_assembler__/graphics/inserter.png"},
			{icon = "__X100_assembler__/graphics/icons.png"}
		},
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "inserter",
        order = "z[stack-inserter]",
        place_result = "X100-inserter",
        stack_size = 50
    },
    {
        type = "item",
        name = "X100-long-inserter",
		icons ={
			{icon = "__X100_assembler__/graphics/long-inserter.png"},
			{icon = "__X100_assembler__/graphics/icons.png"}
		},
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "inserter",
        order = "z[stack-inserter]",
        place_result = "X100-long-inserter",
        stack_size = 50
    },
    {
        type = "item",
        name = "X100-filter-inserter",
		icons ={
			{icon = "__X100_assembler__/graphics/filter-inserter.png"},
			{icon = "__X100_assembler__/graphics/icons.png"}
		},
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "inserter",
        order = "z[stack-filter-inserter]",
        place_result = "X100-filter-inserter",
        stack_size = 50
    },
    {
        type = "item",
        name = "X100-long-filter-inserter",
		icons ={
			{icon = "__X100_assembler__/graphics/long-filter-inserter.png"},
			{icon = "__X100_assembler__/graphics/icons.png"}
		},
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "inserter",
        order = "z[stack-filter-inserter]",
        place_result = "X100-long-filter-inserter",
        stack_size = 50
    }
})