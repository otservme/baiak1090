local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local Topic = {}

function onCreatureAppear(cid)					npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)				npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()								npcHandler:onThink()						end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local barras = 15515 -- ID DAS BARRAS AQUI
	
	if(msgcontains(msg, 'Addon Doll')) then
		if getPlayerItemCount(cid, barras) >= 35 then
			doPlayerRemoveItem(cid, barras, 35)
			doPlayerAddItem(cid, 9693, 1)
			npcHandler:say('Foi um prazer negociar com voce.', cid)
		else
			npcHandler:say('Voce nao tem barras suficiente.', cid)
		end
	end
	
	if(msgcontains(msg, 'Mount Doll')) then
		if getPlayerItemCount(cid, barras) >= 50 then
			doPlayerRemoveItem(cid, barras, 50)
			doPlayerAddItem(cid, 9019, 1)
			npcHandler:say('Foi um prazer negociar com voce.', cid)
		else
			npcHandler:say('Voce nao tem barras suficiente.', cid)
		end
	end

	if(msgcontains(msg, 'VIP III Teleport')) then
		if getPlayerItemCount(cid, barras) >= 200 then
			doPlayerRemoveItem(cid, barras, 200)
			doPlayerAddItem(cid, 24759, 1)
			npcHandler:say('Foi um prazer negociar com voce.', cid)
		else
			npcHandler:say('Voce nao tem barras suficiente.', cid)
		end
	end

	
	
	
	
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())