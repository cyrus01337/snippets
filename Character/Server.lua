local Players = game:GetService("Players")

local function onCharacterAdded(playerCharacter)
	-- the rest of your code goes here...
end

local function onPlayerAdded(player)
	-- if the character exists then we use player.Character...
	if player.Character then
		onCharacterAdded(player.Character)
	end

	-- if it doesn't, we wait until it exists then use what the
	-- event gives us, which is the character
	player.CharacterAdded:Connect(onCharacterAdded)
end

Players.PlayerAdded:Connect(onPlayerAdded)
