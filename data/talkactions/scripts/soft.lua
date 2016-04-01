function onSay(cid, words, param)
if doPlayerRemoveItem(cid, 10021, 1) == TRUE then
doPlayerGiveItem(cid, 6132, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce Reparou um Par de Botas!")
doSendMagicEffect(getPlayerPosition(cid), 40)
doSendAnimatedText(getPlayerPosition(cid), "*Soft Boots*", TEXTCOLOR_LIGHTBLUE)
else
doPlayerSendCancel(cid, "Voce Precisa de uma Worn Soft Boots Para Poder Recarega-la!")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce Precisa de uma Worn Soft Boots Para Poder Recarega-la!")
doSendMagicEffect(getPlayerPosition(cid), 2)
end
end