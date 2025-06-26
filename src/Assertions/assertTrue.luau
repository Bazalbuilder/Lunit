local fail = require(script.Parent.Parent.tests.fail)

--[[
	Assertion that checks if <code>condition</code> is false. An optional
	<code>message</code> can be attached.
]]
local function assertFalse(object: any, message: string?)
	if object ~= true then
		fail(message)
	end
end

return assertFalse
