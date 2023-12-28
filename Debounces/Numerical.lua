-- these are beneficial normally in touched event handlers - because the
-- event can fire many times at once, scopes are used to ensure that
-- there is only one instance of your event handler running rather than
-- many at a time. this race condition can only be solved via the below
-- from my findings, though i have not confirmed other use cases
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
