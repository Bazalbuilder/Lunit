local Tests = require(script.Parent.Parent.Tests)

--[[
	Assertion that checks if <code>condition</code> is not nil. An optional
	<code>message</code> can be attached.
]]
local function assertNotNil(object: any, message: string?)
	if object ~= nil then
		Tests:fail(message or "Test has failed.")
	end
end

return assertNotNil
