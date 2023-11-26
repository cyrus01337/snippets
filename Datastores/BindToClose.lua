-- https://create.roblox.com/docs/reference/engine/classes/DataModel#BindToClose
local Players = game:GetService("Players")

local function onPlayerAdded(player)
	-- Load player data here...
end

local function onPlayerRemoving(player)
	-- Save player data here...
end

local function saveAllPlayersData()
	for _, player in Players:GetPlayers() do
		onPlayerRemoving(player)
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)
-- Whatever function we pass into BindToClose is run when the game is scheduled
-- to shut down (meaning when 0 players are in the server)
game:BindToClose(saveAllPlayersData)
