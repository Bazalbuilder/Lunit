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

	return nil
end

return __help
