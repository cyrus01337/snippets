local Players = game:GetService("Players")

local player = Players.LocalPlayer -- or grab the player some other way

local function onCharacterAdded(playerCharacter)
    -- the rest of your code goes here...
end

-- if the character exists then we use player.Character...
if player.Character then
    onCharacterAdded(player.Character)
end

-- if it doesn't, we wait until it exists then run the function, passing the
-- character that the event gives us to the function itself
player.CharacterAdded:Connect(onCharacterAdded)
