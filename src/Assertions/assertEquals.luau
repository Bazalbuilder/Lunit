local Lunit = script.Parent.Parent
local fail = require(Lunit.core.fail)

--[[
	Assertion that compares <code>expected</code> with <code>result</code>. The
	test will fail if the latter does not equal the former. An optional
	<code>message</code> can be attached.
]]
local function assertEquals(expected: any, result: any)
	if expected ~= result then
		fail()
	end
end

return assertEquals
