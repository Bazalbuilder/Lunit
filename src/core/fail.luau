local Lunit = script.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function fail()
	warn(`Test "` .. TestCache._currentTest .. `" has failed!`)
	table.insert(TestCache._fails, TestCache._currentTest)

	return nil
end

return fail
