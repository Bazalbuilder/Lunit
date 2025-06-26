# Getting Started
Welcome to Lunit!

## Basic Installation
If you haven't already installed Lunit to your project, now is a good time to do so.

To install Lunit, you need to install Wally. Assuming you know how to install Wally to your project, navigate to your `wally.toml` and add this line to your `dev_dependencies`:
```toml
Lunit = "bazalbuilder/lunit@0.1.2-alpha"
```

Run `wally install` to get the Lunit package.

## Creating the entrypoint script
Create a new Luau file named, `test.luau`. The script's purpose is to act as an entrypoint to Lunit as well as running any tests passed into the `Core:run()` function.
```luau
local Core = require(game:GetService("ReplicatedStorage").Lunit.Core)

Core:run("path.to.test.folder.here")

return nil
```

## Creating your first test using Lunit
Let's create a simple function that adds two numbers together. First, create a new `sum.luau` file in your `src` directory.
```luau
return function(a: number, b: number): number
    return a + b
end
```

Then, create a folder named `_TESTS_`. You will have to call `Core:run()` and update the entrypoint script. After you have created the folder and updated the entrypoint, you can now start making a test:
```luau
local Lunit = require("DevPackages/Lunit")
local sum = require(script.Parent.Parent.sum)

local Tests = require(Lunit.Tests)
local assertEquals = require(Lunit.Assertions.assertEquals)

local Test = Tests.new("Sum")

Test:define("Adds 2 + 2 to equal 4", function()
	assertEquals(sum(2, 2), 4, "2 and 2 did not equal 4.")
end)

return Test
```

If you have completed all of the above, simply require the entrypoint script so it can run.

**Congratulations, you've just created your first test using Lunit!**

## Resources
To learn more, take a look at the [API Documentation](../API.md)!