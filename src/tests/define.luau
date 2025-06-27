--[[
	Groups tests into a single scope. Not required, but recommended.
]]
local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function define(name: string, callback: () -> ())
	TestCache.addDefine(name, callback)

	return nil
end

return define
