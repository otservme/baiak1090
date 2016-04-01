function onUse(cid, item, frompos, item2, topos)

if item.itemid == 12328 then
doRemoveItem(item.uid,1)
doSendMagicEffect(frompos,27)
doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
doCreatureAddMana(cid, getCreatureMaxMana(cid))
end
return TRUE
end
