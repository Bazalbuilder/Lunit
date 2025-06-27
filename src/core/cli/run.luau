--[[
	Runs the given test with arguments provided. The argument should be a Folder or the
	__help command
]]
local Lunit = script.Parent.Parent.Parent
local TestCache = require(Lunit.core.TestCache)

local function run(...: string)
	local args = ...
	if args[1] == "__help" then
		local message = require(script.Parent.__help)(script.Name)
		print(message)
		return nil
	end

	local splitted = string.split(args[1], ".")
	local service = game:GetService(splitted[1])
	local instance = service

	for i, instanceName in splitted do
		if i == 1 then
			continue
		end

		local object = instance:FindFirstChild(instanceName)
		if object then
			instance = object
		else
			break
		end
	end

	for _, test in instance:GetChildren() do
		-- TODO: something with core/testData.luau
		require(test)

		TestCache.run()
	end

	return nil
end

return run
