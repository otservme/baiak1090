function Creature:onChangeOutfit(outfit)

return true

end


function Creature:onAreaCombat(tile, isAggressive)

return true

end


function Creature:onTargetCombat(target)
if not self then return true end
if self:isPlayer() and target:isPlayer() then
if self:getStorageValue(_Lib_Battle_Info.TeamOne.storage) >= 1 and target:getStorageValue(_Lib_Battle_Info.TeamOne.storage) >= 1 or self:getStorageValue(_Lib_Battle_Info.TeamTwo.storage) >= 1 and target:getStorageValue(_Lib_Battle_Info.TeamTwo.storage) >= 1 then 
return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
end
end
return true
end

