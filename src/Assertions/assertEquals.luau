local fail = require(script.Parent.Parent.tests.fail)

--[[
	Assertion that compares <code>expected</code> with <code>result</code>. The
	test will fail if the latter does not equal the former. An optional
	<code>message</code> can be attached.
]]
local function assertEquals(expected: any, result: any, message: string?)
	if expected ~= result then
		fail(message)
	end
end

return assertEquals
