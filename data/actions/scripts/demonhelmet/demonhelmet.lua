--[[
   Script by LukazGiovanni
]]--

local cfgItems = {{2493, 1}, {2520, 1}, {2645, 1}}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(2493) and player:getStorageValue(15126) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja escolheu a sua recompensa.")
    elseif player:getStorageValue(15126) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce achou um Demon Helmet, Demon Shield e uma Steel Boots.")
         
        local bag = player:addItem(1993) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15126, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja pegou sua recompensa.")
       end
end
