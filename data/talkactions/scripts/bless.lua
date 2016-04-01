function getCost(level)
	if level <= 30 then
		return 2000*5
	elseif level >= 120 then
		return 20000*5
	else
		return ((level - 20) * 200 * 5)
	end
end

function onSay(cid, words, param)
	local p = Player(cid)
	local cost = getCost(getPlayerLevel(cid))
	if(not(isPlayerPzLocked(cid))) then
		if(p:hasBlessing(1) and p:hasBlessing(2) and p:hasBlessing(3) and p:hasBlessing(4) and p:hasBlessing(5) and p:hasBlessing(6)) then
			p:sendCancelMessage("You have already been blessed by the gods.")
			return false
		end
		if(p:removeMoney(cost)) then
			for b = 1,6 do
				p:addBlessing(b)
			end
			p:getPosition():sendMagicEffect(39)
			p:sendTextMessage(19, "Voce foi abencoado pelos deuses!")
		else
			p:sendCancelMessage("Voce nao tem "..cost.." gold coins para a compra do bless.")
		end
	else
		p:sendCancelMessage("You can't buy bless, when you are in a battle.")
	end
return false
end
