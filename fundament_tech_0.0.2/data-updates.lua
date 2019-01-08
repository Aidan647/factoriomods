local x = 1
--		Add		--
local prerequisites = {
	{"laser-turret-damage-5", "laser-2"},
	{"laser-turret-speed-5", "laser-2"},
	{"worker-robots-storage-3", "robotics-2"},
	{"worker-robots-speed-5", "robotics-2"},
	{"character-logistic-slots-6", "robotics-2"},
	{"research-speed-3", "tech-lab"},

	{"logistics-3", "science-micro-transport"},
	{"railway", "science-micro-transport"},
	{"inserter-capacity-bonus-1", "science-micro-transport"},
	{"robotics", "science-micro-transport"},
	{"automobilism", "science-micro-transport"},

	{"automation-3", "science-micro-mining"},
	{"modules", "science-micro-mining"},
	{"robotics", "science-micro-mining"},
	{"mining-productivity-1", "science-micro-mining"},
	{"advanced-material-processing-2", "science-micro-mining"},

	{"advanced-electronics-2", "science-micro-tech"},
	{"nuclear-power", "science-micro-tech"},
	{"fusion-reactor-equipment", "science-micro-tech"},
	{"power-armor", "science-micro-tech"},


	{"kovarex-enrichment-process", "science-nano-tech-2"},
	{"mining-productivity-16", "science-nano-tech-2"},

	{"braking-force-8", "science-nano-transport-2"},
	{"worker-robots-speed-6", "science-nano-transport-2"},
	{"mining-productivity-16", "science-nano-transport-2"},

	{"productivity-module-3", "science-nano-mining"},

	{"rocket-silo", "science-micro-space"},
}
local add_micro = {
	{"braking-force", "transport"},
	{"inserter-capacity-bonus", "transport"},

	{"inserter-capacity-bonus", "mining", 3},
	{"mining-productivity", "mining"},

	{"power-armor", "tech"},
	{"speed-module", "tech"},
	{"effectivity-module", "tech"},
	{"productivity-module", "tech"},
}

local add_micro_transport = {
	{"railway", 1},
	{"automobilism", 1},
	{"tanks", 1},
	{"logistics-3", 1},
	{"robotics", 1},
}
local add_micro_mining = {
	{"automation-3", 2},
	{"modules", 1},
	{"robotics", 1},
	{"advanced-material-processing-2", 2},
}
local add_micro_tech = {
	{"nuclear-power", 1},
	{"fusion-reactor-equipment", 2},
}
local add_micro_space = {
	{"rocket-silo", 1},
}


local add_nano_transport = {
	{"braking-force-8", 1},
	{"worker-robots-speed-6", 1},
}
local add_nano_mining = {
	{"kovarex-enrichment-process", 1},
	{"mining-productivity-16", 1},
	{"productivity-module-3", 1},
}
local add_nano_tech = {
	{"mining-productivity-16", 1},
}
local add_nano_space = {
}

while x <= 30 do
	for _,v in ipairs(add_micro) do
		if not v[3] then
			if data.raw.technology[v[1] .. "-" .. x] then
				table.insert(data.raw.technology[v[1] .. "-" .. x].unit.ingredients, {"science-micro-" .. v[2], 1})
			elseif x == 1 and data.raw.technology[v[1]] then
				table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-" .. v[2], 1})
			end
		elseif v[3] <= x then
			if data.raw.technology[v[1] .. "-" .. x] then
				table.insert(data.raw.technology[v[1] .. "-" .. x].unit.ingredients, {"science-micro-" .. v[2], 1})
			elseif x == 1 and data.raw.technology[v[1]] then
				table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-" .. v[2], 1})
			end
		end
	end
	x = x + 1
end

for i,v in ipairs(prerequisites) do
	ezlib.tech.add.prerequisites(v[1], v[2])
end
for i,v in ipairs(add_micro_transport) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-transport", v[2]})
end
for i,v in ipairs(add_micro_mining) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-mining", v[2]})
end
for i,v in ipairs(add_micro_tech) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-tech", v[2]})
end
for i,v in ipairs(add_micro_space) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-space", v[2]})
end

for i,v in ipairs(add_nano_transport) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-nano-transport", v[2]})
end
for i,v in ipairs(add_nano_mining) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-nano-mining", v[2]})
end
for i,v in ipairs(add_nano_tech) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-nano-tech", v[2]})
end
for i,v in ipairs(add_nano_space) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-nano-space", v[2]})
end



--		Remove		--
ezlib.tech.remove.prerequisites("logistics-3", "logistics-2")
ezlib.tech.remove.prerequisites("railway", "logistics-2")
ezlib.tech.remove.prerequisites("automobilism", "logistics-2")
ezlib.tech.remove.prerequisites("automation-3", "automation-2")
ezlib.tech.remove.prerequisites("advanced-electronics-2", "advanced-electronics")
ezlib.tech.remove.prerequisites("nuclear-power", "advanced-electronics")

--		Icons		--
data.raw.item.satellite.icons = {{icon = thismod .. "icons/satellite.png"},{icon = thismod .. "type/space-icon.png"}}
data.raw.recipe.satellite.icon = thismod .. "icons/satellite.png"
data.raw.recipe.satellite.icon_size = 64
data.raw.item.satellite.icon_size = 64
data.raw.item.satellite.icon = nil

--		Belts		--
if data.raw.item["underground-belt"].subgroup == "belt" then
	data.raw.item["underground-belt"].subgroup = "underground-belt"
	data.raw.item["fast-underground-belt"].subgroup = "underground-belt"
	data.raw.item["express-underground-belt"].subgroup = "underground-belt"
end
if data.raw.item["splitter"].subgroup == "belt" then
	data.raw.item["splitter"].subgroup = "splitter"
	data.raw.item["fast-splitter"].subgroup = "splitter"
	data.raw.item["express-splitter"].subgroup = "splitter"
end
if data.raw.item["loader"].subgroup == "belt" then
	data.raw.item["loader"].subgroup = "loader"
	data.raw.item["fast-loader"].subgroup = "loader"
	data.raw.item["express-loader"].subgroup = "loader"
end