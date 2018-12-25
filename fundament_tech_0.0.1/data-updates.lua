local x = 1
--		Add		--
local prerequisites = {
	{"laser-turret-damage-5", "laser-2"},
	{"worker-robots-storage-3", "robotics-2"},
	{"worker-robots-speed-5", "robotics-2"},
	{"character-logistic-slots-6", "robotics-2"},
	{"research-speed-3", "tech-lab"},
	{"logistics-3", "science-micro-transport"},
	{"railway", "science-micro-transport"},
	{"inserter-capacity-bonus-1", "science-micro-transport"},
	{"automobilism", "science-micro-transport"},
	{"automation-3", "science-micro-mining"},
	{"modules", "science-micro-mining"},
	{"robotics", "science-micro-mining"}
}
local add_micro_base = {
	{"railway", 1},
	{"automobilism", 1},
	{"tanks", 1},
	{"logistics-3", 1},
	{"automation-3", 2},
	{"modules", 1},
	{"robotics", 1},
	{"mining-productivity-1", 1},
	{"mining-productivity-4", 1},
	{"mining-productivity-8", 1},
	{"mining-productivity-12", 1},
	{"mining-productivity-15", 1}
}
local add_micro_transport = {
	{"railway", 1},
	{"automobilism", 1},
	{"tanks", 1},
	{"logistics-3", 1}
}
local add_micro_mining = {
	{"automation-3", 2},
	{"modules", 1},
	{"robotics", 1},
	{"mining-productivity-1", 1},
	{"mining-productivity-4", 1},
	{"mining-productivity-8", 1},
	{"mining-productivity-12", 1},
	{"mining-productivity-15", 1}
}


while data.raw.technology["inserter-capacity-bonus-" .. x] do
	table.insert(data.raw.technology["inserter-capacity-bonus-" .. x].unit.ingredients, {"science-micro-base", 1})
	table.insert(data.raw.technology["inserter-capacity-bonus-" .. x].unit.ingredients, {"science-micro-transport", 1})
	if x >= 3 then
		table.insert(data.raw.technology["inserter-capacity-bonus-" .. x].unit.ingredients, {"science-micro-mining", 1})
	end
	x = x + 1
end
x = 1
while data.raw.technology["braking-force-" .. x] do
	table.insert(data.raw.technology["braking-force-" .. x].unit.ingredients, {"science-micro-base", 1})
	table.insert(data.raw.technology["braking-force-" .. x].unit.ingredients, {"science-micro-transport", 1})
	x = x + 1
end

for i,v in ipairs(prerequisites) do
	ezlib.tech.add.prerequisites(v[1], v[2])
end
for i,v in ipairs(add_micro_base) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-base", v[2]})
end
for i,v in ipairs(add_micro_transport) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-transport", v[2]})
end
for i,v in ipairs(add_micro_mining) do
	table.insert(data.raw.technology[v[1]].unit.ingredients, {"science-micro-mining", v[2]})
end



--		Remove		--
ezlib.tech.remove.prerequisites("logistics-3", "logistics-2")
ezlib.tech.remove.prerequisites("railway", "logistics-2")
ezlib.tech.remove.prerequisites("automobilism", "logistics-2")
ezlib.tech.remove.prerequisites("automation-3", "automation-2")

--		Icons		--
data.raw.item.satellite.icons = {{icon = thismod .. "icons/satellite.png"},{icon = thismod .. "type/space-icon.png"}}
data.raw.item.satellite.icon_size = 64
data.raw.item.satellite.icon = nil

--		Belts		--

data.raw.item["underground-belt"].subgroup = "underground-belt"
data.raw.item["fast-underground-belt"].subgroup = "underground-belt"
data.raw.item["express-underground-belt"].subgroup = "underground-belt"
data.raw.item["splitter"].subgroup = "splitter"
data.raw.item["fast-splitter"].subgroup = "splitter"
data.raw.item["express-splitter"].subgroup = "splitter"
data.raw.item["loader"].subgroup = "loader"
data.raw.item["fast-loader"].subgroup = "loader"
data.raw.item["express-loader"].subgroup = "loader"