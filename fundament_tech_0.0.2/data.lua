require("defines")
require("prototypes.groups.groups")
for i,v in ipairs(funtech.entity) do
require("prototypes.entity." .. v)
end 
for i,v in ipairs(funtech.item) do
require("prototypes.item." .. v)
end 
for i,v in ipairs(funtech.recipe) do
require("prototypes.recipe." .. v)
end 
for i,v in ipairs(funtech.tech) do
require("prototypes.tech." .. v)
end 
for i,v in ipairs(funtech.all) do
require("prototypes.entity." .. v)
require("prototypes.item." .. v)
require("prototypes.recipe." .. v)
require("prototypes.tech." .. v)
end 
data:extend(funtech.extend)
