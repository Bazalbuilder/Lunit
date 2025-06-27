local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function afterEach(callback: () -> ())
	TestCache.addHook("afterEach", callback)

	return nil
end

return afterEach
