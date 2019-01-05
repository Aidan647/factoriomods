if not data.raw.technology["braking-force-8"] then
	data:extend({
		{
			type = "technology",
			name = "braking-force-8",
			icon_size = 128,
			icon = "__base__/graphics/technology/braking-force.png",
			effects =
			{
				{
					type = "train-braking-force-bonus",
					modifier = 0.1
				}
			},
			prerequisites = {"braking-force-7"},
			unit =
			{
				count_formula = "2^(L+1)",
				ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
					{"science-pack-3", 1},
					{"production-science-pack", 1},
					{"high-tech-science-pack", 1},
					{"space-science-pack", 1}
				},
				time = 50
			},
			max_level = "infinite",
			upgrade = true,
			order = "c-k-f-e"
		},
	})
end