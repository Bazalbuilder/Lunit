local Data = require(script.Parent.Data)

local function getResults()
	print("getResults called! Printing results...")

	for i, fail in Data.fails do
		warn(string.format("\t\t Fail %d | %s", i, fail))
	end

	table.clear(Data.fails)

	return nil
end

return getResults
