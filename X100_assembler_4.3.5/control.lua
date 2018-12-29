script.on_load(function()
local use_loader_redux = settings.startup["use_loader_redux"].value
	if use_loader_redux then
		remote.call("loader-redux", "add_loader", "loader_X100")
	end
end)
