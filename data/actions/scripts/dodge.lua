function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getDodgeLevel() < DODGE.LEVEL_MAX then
		item:remove(1)
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
		player:setDodgeLevel(player:getDodgeLevel() + 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voc� aumentou sua skill de dodge para [" .. player:getDodgeLevel() .. "/" .. DODGE.LEVEL_MAX .. "].")
	elseif player:getDodgeLevel() >= DODGE.LEVEL_MAX then
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "Voc� alcancou o m�ximo de seu DODGE Skill.\nParab�ns!!!!")
		return false
    end
	return true
end