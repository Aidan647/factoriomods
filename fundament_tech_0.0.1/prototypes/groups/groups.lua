local subgroup_add = {
	{"science-" .. funtech.reports_levels[1], "h", "intermediate-products"},
	{"science-" .. funtech.reports_levels[2], "i", "intermediate-products"},
	{"underground-belt", "b-a", "logistics"},
	{"splitter", "b-b", "logistics"},
	{"loader", "b-c", "logistics"}
}
for i,v in ipairs(subgroup_add) do
	table.insert(funtech.extend, {
		type = "item-subgroup",
		name = subgroup_add[i][1],
		order = subgroup_add[i][2],
		group = subgroup_add[i][3]
	})
end