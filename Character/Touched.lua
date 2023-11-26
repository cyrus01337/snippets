local Players = game:GetService("Players")

workspace.Baseplate.Touched:Connect(function(hit)
	-- Ancestor == Parent

	-- normal parts don't have a model as their parent/parent's parent/etc so
	-- FindFirstAncestorOfClass will return nil, whereas body parts will have
	-- their parent be the character while accessories will have their parent's
	-- parent be the character. If `playerChar` ends up being nil and it's
	-- passed into `Players:GetPlayerFromCharacter()`, it'll just return nil
	local playerChar = hit:FindFirstAncestorOfClass("Model")
	local player = Players:GetPlayerFromCharacter(playerChar)

	if not player then
		return
	end

	-- the rest of your code goes here...
end)
