local fail = require(script.Parent.Parent.tests.fail)

--[[
	Assertion that checks if <code>condition</code> is true. An optional
	<code>message</code> can be attached.
]]
local function assertFalse(object: any, message: string?)
	if object ~= false then
		fail(message)
	end
end

return assertFalse
