local Tests = require(script.Parent.Parent.Tests)

--[[
	Assertion that checks if <code>condition</code> is false. An optional
	<code>message</code> can be attached.
]]
local function assertFalse(object: any, message: string?)
	if object ~= true then
		Tests:fail(message)
	end
end

return assertFalse
