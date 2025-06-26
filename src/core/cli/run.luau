--[[
	Runs the given test with arguments provided. The argument should be a Folder or the
	__help command (when it is added.)
]]

local function run(...: string)
	local args = ...
	-- if args[1] == "__help" then
	-- 	require(script.Parent.__help)(script.Name)
	-- 	return nil
	-- end

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
		require(test)
	end

	return nil
end

return run
