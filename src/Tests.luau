--[[
	Testing library for Lunit.
]]

local Test = {}
Test.__index = Test
Test._name = ""
Test._tests = {}
Test._fails = {}

--[[
	Creates a new object with a parameter <code>name</code>. 
]]
function Test.new(name: string)
	local self = {}
	Test._name = name
	
	setmetatable(self, Test)
	
	return self
end

--[[
	Describes a test to be conducted. A <code>description</code> will be required as well
	as a <code>callback</code>.
]]
function Test:define(description: string, callback: () -> ())
	table.insert(Test._tests, {
		description = description,
		callback = callback(),
	})
end

--[[
	Called when a test fails. Has support for an optional <code>message</code>.
]]
function Test:fail(message: string)
	Test._fails[Test._name] = message
end

--[[
	Called when a test has finished.
]]
function Test:finish()
	print("Testing has finished for module", Test._name)
	
	for module, message in pairs(Test._fails) do
		warn(module, "| reason:", message)
	end
	
	table.clear(Test._fails)
	return
end

return Test