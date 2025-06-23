local Tests = require(script.Parent.Parent.Tests)

--[[
	Assertion that compares <code>expected</code> with <code>result</code>. The 
	test will fail if the latter does not equal the former. An optional 
	<code>message</code> can be attached.
]]
local function assertEquals(expected: any, result: any, message: string?)
	if expected ~= result then
		Tests:fail(message)
	end
end

return assertEquals
