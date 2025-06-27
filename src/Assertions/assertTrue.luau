local Lunit = script.Parent.Parent
local fail = require(Lunit.core.fail)


--[[
	Assertion that checks if <code>condition</code> is false. An optional
	<code>message</code> can be attached.
]]
local function assertFalse(object: any)
	if object ~= true then
		fail()
	end
end

return assertFalse
