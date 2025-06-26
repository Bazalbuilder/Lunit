local fail = require(script.Parent.Parent.tests.fail)

--[[
	Assertion that checks if <code>condition</code> is not nil. An optional
	<code>message</code> can be attached.
]]
local function assertNotNil(object: any, message: string?)
	if object ~= nil then
		fail(message)
	end
end

return assertNotNil
