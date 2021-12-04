local Players = game:GetService("Players")
local Run = game:GetService("RunService")


local function onPlayerAdded(player)
    -- the rest of your code goes here...
end


Players.PlayerAdded:Connect(onPlayerAdded)

-- this block will run only if the script is being run within studio

-- the reason this is done in the first place is because the server run by
-- studio fires the PlayerAdded event way before we can even connect a function
-- to the event - to combat this, we get every player and pass the player into
-- it, running it directly
if Run:IsStudio() then
    for _, player in ipairs(Players:GetPlayers()) do
        onPlayerAdded(player)
    end
end
