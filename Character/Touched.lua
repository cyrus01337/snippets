local Players = game:GetService("Players")


workspace.Baseplate.Touched:Connect(function(hit)
    -- Ancestor == Parent
    local playerChar = hit:FindFirstAncestorOfClass("Model")
    local player = Players:GetPlayerFromCharacter(playerChar)

    if not player then return end

    -- the rest of your code goes here...
end)
