
ezlib.log.print(data.raw.recipe["cobalt-oxide-from-copper"])
require("script.furnace")
require("script.assembler")
local ls_pipe1 = ezlib.entity.get.list('pipe')
local ls_pipe2 = ezlib.entity.get.list('pipe-to-ground')
for x,y in ipairs(ls_pipe1) do  
	data.raw["pipe"][y].collision_mask = {"object-layer"}
end
for x,y in ipairs(ls_pipe2) do  
	data.raw["pipe-to-ground"][y].collision_mask = {"object-layer"}
end



