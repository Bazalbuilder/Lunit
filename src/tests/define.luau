local Data = require(script.Parent.Data)

local function define(description: string, callback: () -> ())
	Data.currentTest = description

	callback()

	return nil
end

return define
