local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function afterAll(callback: () -> ())
	TestCache.addHook("afterAll", callback)

	return nil
end

return afterAll
