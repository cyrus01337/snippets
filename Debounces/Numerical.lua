local debounce = 0
local example = workspace.Baseplate

example.Touched:Connect(function(...)
	debounce += 1
	if debounce > 1 then
		return
	end

	-- the rest of your code goes here...

	debounce = 0
end)
