local temploPosition = Position(5047, 5005, 7)
local treinersPosition = Position(5310, 5277, 6)
local teleportsPosition = Position(5068, 5193, 7)
local depotPosition = Position(5047, 5031, 7)
local poiPosition = Position(5209, 5000, 7)

function onModalWindow(cid, modalWindowId, buttonId, choiceId)
   if modalWindowId ~= 0x0100 then -- Not our window
     return false
   elseif buttonId == 0x01 then -- Cancel
     return false
   end
 
   local player = Player(cid)
   if choiceId == 0x00 then
     player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce foi teleportado para o templo de Fuon City.")
     player:teleportTo(temploPosition, true)
   elseif choiceId == 0x01 then
     player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce foi teleportado pra sala de teleports.")
     player:teleportTo(teleportsPosition, true)
elseif choiceId == 0x02 then
     player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce foi teleportado pra sala de treiners.")
     player:teleportTo(treinersPosition, true)
elseif choiceId == 0x03 then
     player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce foi teleportado para o depot de Fuon City.")
     player:teleportTo(depotPosition, true)
elseif choiceId == 0x04 then
     player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce foi teleportado para a Pits Of Inferno.")
     player:teleportTo(poiPosition, true)
   end
   return true
end