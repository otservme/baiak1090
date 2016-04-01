local tpId = 1387
local tps = {
["Gnomo Supremo"] = {pos = {x=5555, y=5133, z=9}, toPos = {x=5558, y=5151, z=9}, time = 30},
}

function removeTp(tp)
local t = getTileItemById(tp.pos, tpId)
if t then
doRemoveItem(t.uid, 1)
doSendMagicEffect(tp.pos, CONST_ME_POFF)
end
end

function onDeath(cid)
local tp = tps[getCreatureName(cid)]
if tp then
doCreateTeleport(tpId, tp.toPos, tp.pos)
doCreatureSay(cid, "O teleport irá sumir em "..tp.time.." segundos.", TALKTYPE_ORANGE_1)
addEvent(removeTp, tp.time*1000, tp)
end
return TRUE
end