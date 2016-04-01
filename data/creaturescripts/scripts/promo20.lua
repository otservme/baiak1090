local level = 20
local vocs = {1, 2, 3, 4}

function onAdvance(cid, skill, oldlevel, newlevel)
    if getPlayerLevel(cid) == level then
	for i = 1, #vocs
		if getPlayerVocation(cid, vocs[i]) then
			setPlayerPromotionLevel(cid, 1)
		end
	end
end