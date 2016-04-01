--[[
   Script by LukazGiovanni
]]--

local cfgItems = {{2160, 50}, {2383, 1}, {2428, 1}, {2439, 1}, {2456, 1}, {2544, 1}, {2182, 1}, {2190, 1}, {2463, 1}}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(7715) and player:getStorageValue(15125) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja escolheu a sua recompensa.")
    elseif player:getStorageValue(15125) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce achou 50 Crystal Coins.")
         
        local bag = player:addItem(1988) -- Backpack id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15125, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja pegou sua recompensa.")
       end
end
