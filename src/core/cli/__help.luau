local function __help(name: string?)
	if not name then
		print([[
			lunit 0.2.0-alpha
			Luau testing made easy.

			USAGE:
				require(game.ReplicatedStorage.Lunit).cli("[COMMANDS] [ARGS]")

			COMMANDS:
				run
					Runs the provided test folder.
		]])
	end

	if name == "run" then
		return [[
			lunit 0.2.0-alpha-run
			USAGE:
				require(game.ReplicatedStorage.Lunit).cli("run [PATH]")

			ARGS:
				[PATH]
					The path where the test should run.
		]]
	end

	return nil
end

return __help
