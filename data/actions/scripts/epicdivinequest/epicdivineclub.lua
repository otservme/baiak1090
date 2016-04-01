--[[
   Script by LukazGiovanni
]]--

local cfgItems = {{15647, 1}}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(15647) and player:getStorageValue(15145) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja escolheu a sua recompensa.")
    elseif player:getStorageValue(15145) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce achou um Epic Divine Club.")
         
        local bag = player:addItem(1993) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15145, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja pegou sua recompensa.")
       end
end
