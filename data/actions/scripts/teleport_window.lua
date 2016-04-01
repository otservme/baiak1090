function onUse(cid, item, fromPosition, itemEx, toPosition)
   local player = Player(cid)
   local modalWindow = ModalWindow(0x0100, "Viaje para todos lugares", "Selecione um destino:")

   modalWindow:addChoice(0x00, "Templo")
   modalWindow:addChoice(0x03, "Depot")
   modalWindow:addChoice(0x02, "Treiners")
   modalWindow:addChoice(0x01, "Teleports")
   modalWindow:addChoice(0x04, "POI")
 
   modalWindow:addButton(0x00, "Select")
   modalWindow:setDefaultEnterButton(0x00)
 
   modalWindow:addButton(0x01, "Cancel")
   modalWindow:setDefaultEscapeButton(0x01)

   modalWindow:sendToPlayer(player)
   return true
end
