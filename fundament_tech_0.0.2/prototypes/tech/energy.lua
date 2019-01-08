data:extend({
	{
		type = "technology",
		name = "space-solar-panel",
		icon_size = 256, 
		icons = { 
			{icon = thismod .. "tech/space_solar_panel.png"},
			{icon = thismod .. "type/space_256.png"}
			},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "space-solar-panel"
			}
		},
		prerequisites = {"rocket-silo", "solar-energy", "laser-2", "science-nano-mining-2", "science-nano-space-2"},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"science-nano-mining", 1},
				{"science-nano-space", 1},
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