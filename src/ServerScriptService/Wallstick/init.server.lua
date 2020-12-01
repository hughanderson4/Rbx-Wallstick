local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterPlayerScripts = game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts")

local PlayerScriptsLoader = script:WaitForChild("PlayerScriptsLoader")
local foundPlayerScriptsLoader = StarterPlayerScripts:FindFirstChild("PlayerScriptsLoader")

if foundPlayerScriptsLoader then
	-- destroy the loader if it already exists
	foundPlayerScriptsLoader:Destroy()
end

PlayerScriptsLoader.Parent = StarterPlayerScripts

require(script:WaitForChild("Remotes")) -- this creates and runs the remotes we need

local Wallstick = script:WaitForChild("Wallstick")
Wallstick.Parent = ReplicatedStorage