function onSay(cid, words, param)
	local player = Player(cid)
	if getPlayerGroupId(cid) > 2 then

	local itemCount = cleanMap()
	if itemCount > 0 then
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "Limpou " .. itemCount .. " item" .. (itemCount > 1 and "s" or "") .. " do mapa.")
	end
	return false
	end
	
end
