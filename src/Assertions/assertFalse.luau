local Tests = require(script.Parent.Parent.Tests)

--[[
	Assertion that checks if <code>condition</code> is true. An optional
	<code>message</code> can be attached.
]]
local function assertFalse(object: any, message: string?)
	if object ~= false then
		Tests:fail(message)
	end
end

return assertFalse
