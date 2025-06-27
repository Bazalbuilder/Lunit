local Lunit = script.Parent.Parent
local fail = require(Lunit.core.fail)
--[[
	Assertion that checks if <code>condition</code> is not nil. An optional
	<code>message</code> can be attached.
]]
local function assertNotNil(object: any)
	if object ~= nil then
		fail()
	end
end

return assertNotNil
