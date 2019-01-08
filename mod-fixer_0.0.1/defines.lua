modname = "mod-fixer"
if not mod then mod = {} end
mod.list = {
	"texugo", -- Texugo Wind Generator
}
for _,v in ipairs(mod.list) do
	require("prototypes." .. v)
end