local playerPosition = {
	{x = 5226, y = 5106, z = 9},
	{x = 5225, y = 5106, z = 9},
	{x = 5224, y = 5106, z = 9},
	{x = 5223, y = 5106, z = 9}
}
local newPosition = {
	{x = 5219, y = 5116, z = 10},
	{x = 5218, y = 5116, z = 10},
	{x = 5217, y = 5116, z = 10},
	{x = 5216, y = 5116, z = 10}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9825 then
		local players = {}
		for _, position in ipairs(playerPosition) do
			local topPlayer = Tile(position):getTopCreature()
			if topPlayer == nil or not topPlayer:isPlayer() or topPlayer:getLevel() < 100 or topPlayer:getStorageValue(30015) ~= -1 then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
				return false
			end
			players[#players + 1] = topPlayer
		end

		for i, targetPlayer in ipairs(players) do
			Position(playerPosition[i]):sendMagicEffect(CONST_ME_POFF)
			targetPlayer:teleportTo(newPosition[i], false)
			targetPlayer:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
		end
		item:transform(9826)
	elseif item.itemid == 9826 then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
	end
	return true
end
