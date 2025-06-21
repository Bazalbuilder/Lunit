--[[
	Testing library for Lunit.
]]

local Test = {}
Test.__index = Test
Test._suiteName = ""
Test._tests = {}
Test._fails = {}
Test._amountFailed = 0

local function sumOfTests()
	local total = #Test._tests
	local failed = #Test._fails

	return total - failed
end

--[[
	Creates a new test suite with a <code>name</code>.
]]
function Test.new(name: string)
	local self = {}
	Test._suiteName = name

	setmetatable(self, Test)

	return self
end

--[[
	Describes a test to be conducted. A <code>description</code> is required as
	well as a <code>callback</code>.
]]
function Test:define(description: string, callback: () -> ())
	local case = {
		description = description,
		callback = callback(),
		isFailed = false,
	}

	table.insert(Test._tests, case)
end

--[[
	Called when a test fails.
]]
function Test:fail(message: string?)
	Test._amountFailed += 1
	table.insert(Test._fails, Test._amountFailed, message or "Test has failed.")
end

--[[
	Called when a test has finished.
]]
function Test:printResults()
	print("Testing has finished for module", Test._suiteName)
	print(sumOfTests(), "out of the", #Test._tests, "tests have passed.")

	for i, message in pairs(Test._fails) do
		local formatted = string.format("\t\t%d | %s", i, message)

		warn(formatted)
	end

	table.clear(Test._fails)
end

return Test
