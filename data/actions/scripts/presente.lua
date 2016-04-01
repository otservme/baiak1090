function onUse(cid, item)
        local ids = {{2160, 100}, {9693, 1}, {9019, 1}, {8302, 1}, {8303, 1}} -- IDs que podem vir no presente {id, quantia}
        local rand = math.random(1, #ids)
       
                doPlayerAddItem(cid, ids[rand][1], ids[rand][2])
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce abriu seu presente.")
                doRemoveItem(item.uid, 1)
return true
end