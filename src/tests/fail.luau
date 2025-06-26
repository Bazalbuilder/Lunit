local Data = require(script.Parent.Data)

local function fail(message: string?)
	table.insert(Data.fails, message or "Test has failed.")

	return nil
end

return fail
