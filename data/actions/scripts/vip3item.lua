local novapos = {x = 5550, y = 5130, z = 9}

function onUse(cid, item)

doTeleportThing(cid,novapos , TRUE)
doRemoveItem(item.uid,1)
return true
end