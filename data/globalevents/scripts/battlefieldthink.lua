_Lib_Battle_Days = {
["Sunday"] = {
["15:00"] = {players = 10}
},
["Monday"] = {
["15:00"] = {players = 10}
},
["Tuesday"] = {
["15:00"] = {players = 10}
},
["Wednesday"] = {
["15:00"] = {players = 10}
},
["Thursday"] = {
["15:00"] = {players = 10}
},
["Friday"] = {
["15:00"] = {players = 10}
},
["Saturday"] = {
["15:00"] = {players = 10}
}
}
function onThink(interval)
if _Lib_Battle_Days[os.date("%A")] then
hours = tostring(os.date("%X")):sub(1, 5)
tb = _Lib_Battle_Days[os.date("%A")][hours]
if tb and (tb.players % 2 == 0) then
local tp = Game.createItem(11798, 1, _Lib_Battle_Info.tpPos)
tp:setActionId(45000)
CheckEvent(_Lib_Battle_Info.limit_Time)
Game.setStorageValue(_Lib_Battle_Info.storage_count, tb.players)
broadcastMessage("The event BattleField was opened and We are waiting "..tb.players.." Players! Team divided into "..((tb.players)/2).." VS "..((tb.players)/2))
end
end
return true
end