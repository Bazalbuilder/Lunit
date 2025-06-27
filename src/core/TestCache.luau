local TestCache = {}
TestCache._cache = {}
TestCache._fails = {}
TestCache._hooks = {}
TestCache._location = TestCache._cache
TestCache._currentTest = nil

local function recursiveSearch(item: any)
	for _, value in item do
		if typeof(value) == "table" then
			recursiveSearch(value)
		elseif typeof(value) == "function" then
			if TestCache._hooks["beforeEach"] then
				TestCache._hooks["beforeEach"]()
			end

			value()

			if TestCache._hooks["afterEach"] then
				TestCache._hooks["afterEach"]()
			end

		end
	end
end

function TestCache.addDefine(name: string, callback: () -> ())
	if TestCache._location ~= TestCache._cache then
		TestCache._location = TestCache._location[name]
	end

	TestCache._cache[name] = {}
	TestCache._location = TestCache._cache[name]
	callback()
end

function TestCache.addTest(name: string, callback: () -> ())
	table.insert(TestCache._location, { name, callback })
	TestCache._currentTest = name
end

function TestCache.addHook(name: string, callback: () -> ())
	TestCache._hooks[name] = callback
end

function TestCache.run()
	print(TestCache._hooks)

	if TestCache._hooks["beforeAll"] then
		TestCache._hooks["beforeAll"]()
	end

	for _, test in TestCache._cache do
		if typeof(test) == "table" then
			recursiveSearch(test)
		elseif typeof(test) == "function" then
			test()
		end
	end

	if TestCache._hooks["afterAll"] then
		TestCache._hooks["afterAll"]()
	end

end

return TestCache
