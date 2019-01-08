require("config")
x = settings.startup["angel-support"].value
if bobmods then
	if bobmods.tech then
		if x == true then
			require("prototypes.tech_angel")
		else
			require("prototypes.tech")
		end
	else
	require("prototypes.recipe")
	require("prototypes.tech")
	end
	if bobmods.electronics then
		if x == false then
			require("prototypes.recipe")
		else
			require("prototypes.recipe_angel")
		end
	else
	require("prototypes.recipe")
	require("prototypes.tech")
	end
else
	require("prototypes.recipe")
	require("prototypes.tech")
end
require("require")