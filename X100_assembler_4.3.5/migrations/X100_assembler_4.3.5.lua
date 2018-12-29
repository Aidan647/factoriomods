for _, force in pairs(game.forces) do
	if force.technologies["X100_assembler"].researched then
		force.recipes["X100_assembler"].enabled = true
		force.recipes["X100_advance_assembler"].enabled = true
		force.recipes["X100_furnace"].enabled = true
	end
	if force.technologies["transport_belt_X100"].researched then
		force.recipes["splitter_X100"].enabled = true
		force.recipes["transport_belt_X100"].enabled = true
		force.recipes["loader_X100"].enabled = true
		force.recipes["transport_ground_X100"].enabled = true
		force.recipes["transport_ground_X100_chanal1"].enabled = true
		force.recipes["X100_pipe-ground"].enabled = true
		force.recipes["X100_pipe"].enabled = true
	end
	if force.technologies["X100-train"].researched then
		force.recipes["X100-locomotive-1"].enabled = true
		force.recipes["X100-locomotive-tender"].enabled = true
		force.recipes["X100-wagon-1"].enabled = true
		force.recipes["X100-wagon-2"].enabled = true
	end
	if force.technologies["X100_refinery"].researched then
		force.recipes["X100_refinery"].enabled = true
	end
end