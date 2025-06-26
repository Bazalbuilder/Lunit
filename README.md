# Lunit
Lunit is a testing library used to conduct script tests in Luau.

**This library is a work-in-progress.**

## Installation
### Option A: Release Tab
Navigate to the releases tab and install the .rbxm file. Then, drag the contents into Roblox Studio. It is recommended to place the contents into ReplicatedStorage.

### Option B: Wally
Another way to install Lunit is by using Wally. For example, adding the dependency to your `wally.toml`:
```toml
[dev-dependencies]
Lunit = "bazalbuilder/lunit@0.1.2-alpha"
```

### Option C: Rojo (nightly)
Download the source code directly and open it using a Rojo-supported IDE (VSCode is recommended). Open the project and run `rojo serve` on the command line.
Then, use the [Roblox Studio Rojo plugin](https://create.roblox.com/store/asset/13916111004/Rojo?assetType=Plugin) to sync a new Roblox Studio place to Rojo. Make sure you are using version 7.5.1!

## License
This project is licensed under [MIT](http://opensource.org/licenses/MIT). See [LICENSE](LICENSE) for more details.

Any forks of this repository should also be licensed under MIT.

## Questions
Any questions should be posted on the [Issue Tracker](https://github.com/Bazalbuilder/Lunit/issues).

Remember, don't be afraid to ask a question! It could be beneficial!

## Contributions
Coming soon.

### TODO List:
* CLI Command: `__help`: prints out info about the command or the command list, depending on the arguments.
* afterAll, afterEach, beforeAll, and beforeEach: requires a bit of knowledge of either coroutines or something else.
