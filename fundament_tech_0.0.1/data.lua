thismod = "__fundament_tech__/graphics/"
entity = {}
item = {}
recipe = {}
tech = {"laser", "drones"}
all = {"energy", "lab"}
for i,v in ipairs(entity) do
require("prototypes.entity." .. v)
end 
for i,v in ipairs(item) do
require("prototypes.item." .. v)
end 
for i,v in ipairs(recipe) do
require("prototypes.recipe." .. v)
end 
for i,v in ipairs(tech) do
require("prototypes.tech." .. v)
end 
for i,v in ipairs(all) do
require("prototypes.entity." .. v)
require("prototypes.item." .. v)
require("prototypes.recipe." .. v)
require("prototypes.tech." .. v)
end 
