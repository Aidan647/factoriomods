data:extend({
	{
		type = "technology",
		name = "space-solar-panel",
		icon_size = 128, 
		icons = { 
			{icon = "__base__/graphics/technology/solar-energy.png"},
			{icon = thismod .. "type/space.png"}
			},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "space-solar-panel"
			}
		},
		prerequisites = {"rocket-silo", "solar-energy", "laser-2"},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1},
				{"high-tech-science-pack", 3},
				{"space-science-pack", 3}
			},
			time = 60
		},
		order = "z-a"
	}
})