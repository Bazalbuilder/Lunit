local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function beforeEach(callback: () -> ())
	TestCache.addHook("beforeEach", callback)

	return nil
end

return beforeEach
