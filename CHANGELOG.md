# Lunit Changelog
## Nightly
* Added a basic Command Line Interface (Bazal, 24Jun2025)
    * Run it on Roblox Studio's command prompt for it to work. Example:
        ```luau
        require(game.ReplicatedStorage.Lunit).cli("run __help")
        ```
    * Commands include: `run` `__version` `__help`.
* Reorganized basically everything. (Bazal, 25Jun2025)
    * `Tests.luau` and `Core.luau` are now separate collections of scripts.
* Added new test scripts: `afterAll`, `afterEach`, `beforeAll`, `beforeEach` (Bazal, 27Jun2025)

## v0.1.2-alpha
* New assertion: assertTrue (Bazal, 23Jun2025)
* New assertion: assertFalse (Bazal, 23Jun2025)
* Fixed folder duplication (Bazal, 23Jun2025)

## v0.1.1-alpha
* New assertion: assertNotNil (Bazal, 20Jun2025)
* Added documentation (Bazal, 20Jun2025)
* Update README (Bazal, 20Jun2025)
* Update default.project.json (Bazal, 22Jun2025)

## v0.1.0-alpha
* Initial alpha release (Bazal, 19Jun2025)
