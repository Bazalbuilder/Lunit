local Tests = require(script.Parent.Parent.Tests)

--[[
	Assertion that compares <code>expected</code> with <code>result</code>. It will fail if the
	latter does not equal the former. An optional message can be attached.
]]
local function assertEquals(expected: any, result: any, message: string?)
	if expected ~= result then
		Tests:fail(message or "Test has failed.")
	end
end

return assertEquals