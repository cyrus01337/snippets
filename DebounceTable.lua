local Players = game:GetService("Players")

local debounces = {}


local function onPlayerAdded(player)
    if debounces[player] then return end

    debounces[player] = true

    -- the rest of your code goes here...

    debounces[player] = nil
end


Players.PlayerAdded:Connect(onPlayerAdded)
