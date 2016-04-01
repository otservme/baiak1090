function onSay(cid, words, param, channel)
if getPlayerGroupId(cid) > 2 then
for var = 1,2 do
if var == 1 then
broadcastMessage("Salvo.", 4)
end
if var == 2 then
saveServer()
end
end
end
return true
end
