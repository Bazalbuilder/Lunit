--[[
	The core library for Lunit. Contains all the functions needed for the library to conduct
	tests.
]]
local Core = {}

--[[
	Runs Lunit and takes in a parameter <code>root</code> that is a test folder.
]]
function Core:run(root: Folder)
	assert(root.Name == "_TESTS_", "Unable to get contents, " .. root.Name .. " is not a test folder.")
	
	for _, test in root:GetChildren() do
		local success, result = pcall(function()
			require(test)
		end)
		
		if not success then
			warn("Test " .. test.Name .. " has errored!", result)
		end
		
	end

	print("Finished tests of current folder")
end

return Core
