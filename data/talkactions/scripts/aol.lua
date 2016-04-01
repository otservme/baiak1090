function onSay(cid, words, param)
	local cost, p = 10000, Player(cid)
	if(not(p:isPzLocked())) then
		if(p:removeMoney(cost)) then
			p:addItem(2173, 1)
			p:sendTextMessage(19, "You have bought amulet of loss!")        
		else
			p:sendCancelMessage("Voce nao tem "..cost.." gold coins para comprar um Amulet Of Loss.")
		end
	else
		p:sendCancelMessage("You can't buy amulet of loss, when you are in a battle.")
	end
return false
end
