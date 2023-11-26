local Players = game:GetService("Players")

local player = Players.LocalPlayer -- or grab the player some other way
-- if the character exists then we use player.Character
-- if it doesn't, we wait until it exists then use what the event gives us,
-- which is the character
local playerChar = player.Character or player.CharacterAdded:Wait()
-- the rest of your code goes here...
