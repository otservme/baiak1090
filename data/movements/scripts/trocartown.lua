local config = {
	[9056] = 1,
	[9057] = 3
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local townId = config[item.uid]
	if not townId then
		return true
	end

	local town = Town(townId)
	if not town then
		return true
	end

	if town:getId() == 12 and player:getStorageValue(Storage.BarbarianTest.Questline) < 8 then
		player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You first need to absolve the Barbarian Test Quest to become citizen!')
		player:teleportTo(town:getTemplePosition())
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	player:setTown(town)
	player:teleportTo(town:getTemplePosition())
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Bem Vindo ao LKing. Runas, Potions e Weapons infinitos / Temos 3 Vip, 5 sets e itens de attack editados, Addon e Mount Doll vende no Npc / Cidade Principal, 3 Cidades Vip, Roshamuul, Grey Island, Gnomebase, Warzone 1, 2 e 3. BOM JOGO!')
	return true
end
