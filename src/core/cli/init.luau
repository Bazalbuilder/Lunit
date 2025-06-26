local function cli(cmd: string)
	local args = string.split(cmd, " ")

	if not script:FindFirstChild(args[1]) then
		warn("Command " .. args[1] .. " does not exist!")
		return nil
	end

	local mod = require(script[args[1]])

	table.remove(args, 1)

	return mod(args)
end

return cli
