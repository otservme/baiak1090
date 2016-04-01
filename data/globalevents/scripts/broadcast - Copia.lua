function onThink(interval)
local Message = {
    "Temos 3 Vips, para obter basta fazer a quest, teleport esta localizado na Sala de Quests.",
    "Runas, potions e weapons sao infinitos.",
    "5 Sets editados e 5 armas editadas, vendendo em npc e tambem pode ser adquirido em quest.",
    "Cidades adicionadas: 4 Cidades Vip, Roshamuul, Grey Island, Gnomebase e Warzone 1, 2 e 3.",
    "",
    ""
}

    for a, b in pairs(getPlayersOnline()) do
        doPlayerSendTextMessage(b, MESSAGE_INFO_DESCR, Message[math.random(#Message)])
    end
    return true
end