-- https://create.roblox.com/docs/reference/engine/classes/DataModel#BindToClose
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

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
--
-- Note: this is only necessary in studio, as game servers normally ensure that
-- functions connected to events run fine, though there may be some cases where
-- saving player data takes so long that this may be necessary without the
-- studio check (this normally isn't the case)
if RunService:IsStudio() then
	game:BindToClose(saveAllPlayersData)
end
