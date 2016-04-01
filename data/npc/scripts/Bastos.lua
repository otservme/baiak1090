local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. I am specialized in boots, especially in {soft boots} and {firewalker boots}.") 
function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
    if(msgcontains(msg, 'fire') or msgcontains(msg, 'firewalker')) then
        selfSay('Do you want to repair your worn wirewalker boots for 100000 gold coins?', cid)
        talkState[talkUser] = 1
    elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
        if(getPlayerItemCount(cid, 10022) >= 1) then
            if(doPlayerRemoveMoney(cid, 100000) == TRUE) then
                local item = getPlayerItemById(cid, TRUE, 10022)
                doTransformItem(item.uid, 9933)
                selfSay('Here you are.', cid)
            else
                selfSay('Sorry, you don\'t have enough gold.', cid)
            end
        else
            selfSay('Sorry, you don\'t have the item.', cid)
        end
        talkState[talkUser] = 0
    elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
        talkState[talkUser] = 0
        selfSay('Ok then.', cid)
    end
    if(msgcontains(msg, 'soft') or msgcontains(msg, 'softt')) then
        selfSay('Do you want to repair your worn soft boots for 50000 gold coins?', cid)
        talkState[talkUser] = 2
    elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
        if(getPlayerItemCount(cid, 10021) >= 1) then
            if(doPlayerRemoveMoney(cid, 50000) == TRUE) then
                local item = getPlayerItemById(cid, TRUE, 10021)
                doTransformItem(item.uid, 6132)
                selfSay('Here you are.', cid)
            else
                selfSay('Sorry, you don\'t have enough gold.', cid)
            end
        else
            selfSay('Sorry, you don\'t have the item.', cid)
        end
        talkState[talkUser] = 0
    elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
        talkState[talkUser] = 0
        selfSay('Ok then.', cid)
    end
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())