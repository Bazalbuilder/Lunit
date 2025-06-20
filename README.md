# Lunit
Testing made easy.

## Example
This is an example of simple addition. Note that the first three variables will have to be changed to reflect your workflows.
```luau
local Packages = script.Parent.Parent.Parent.Packages
local Lunit = Packages.Lunit
local sum = require(script.Parent.Parent.sum)

local Tests = require(Lunit.Tests)
local assertEquals = require(Lunit.Assertions.assertEquals)

local Test = Tests.new("Sum")

Test:define("Adds 2 + 2 to equal 4", function()
	assertEquals(sum(2, 2), 4, "Sum did not equal 4!")
end)

Test:finish()

return Test
```