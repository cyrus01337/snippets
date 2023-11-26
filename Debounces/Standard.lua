-- https://create.roblox.com/docs/scripting/debounce
local UserInputService = game:GetService("UserInputService")

local isRunning = false

UserInputService.InputBegan:Connect(function(input, inGui)
	if isRunning then
		return
	end

	isRunning = true

	-- the rest of your code goes here...

	isRunning = false
end)
