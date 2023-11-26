local DataStoreService = game:GetService("DataStoreService")
local Players = game:GetService("Players")

local datastore = DataStoreService:GetDataStore("placeholder")

-- Standard approach with SetAsync
local function onPlayerRemoving(player)
	local playerKey = player.UserId
	local playerData = {}

	for _, stat in player.leaderstats:GetChildren() do
		playerData[stat.Name] = stat.Value
	end

	datastore:SetAsync(playerKey, playerData)
end

Players.PlayerRemoving:Connect(onPlayerRemoving)

-- Converting to UpdateASync...
local function onPlayerRemoving(player)
	local playerKey = player.UserId

	-- the function you pass to UpdateAsync is called by the datastore,
	-- whatever this returns gets saved in the datastore
	datastore:UpdateAsync(playerKey, function(oldPlayerData)
		local playerData = {}

		for _, stat in player.leaderstats:GetChildren() do
			playerData[stat.Name] = stat.Value
		end

		return playerData
	end)
end

Players.PlayerRemoving:Connect(onPlayerRemoving)
