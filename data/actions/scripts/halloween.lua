local novapos = {x = 5276, y = 5157, z = 7}

function onUse(cid, item)

doTeleportThing(cid,novapos , TRUE)
doRemoveItem(item.uid,1)
return true
end