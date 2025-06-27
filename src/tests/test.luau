local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function test(name: string, callback: () -> ())
	TestCache.addTest(name, callback)

	return nil
end

return test
