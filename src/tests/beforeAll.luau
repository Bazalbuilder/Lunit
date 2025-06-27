local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function beforeAll(callback: () -> ())
	TestCache.addHook("beforeAll", callback)

	return nil
end

return beforeAll
