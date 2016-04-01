local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)

function onGetFormulaValues(player, attack, factor)
	local skillTotal = 32 * player:getEffectiveSkillLevel(SKILL_DISTANCE)
	local levelTotal = player:getLevel() / 5
	return -(((skillTotal + attack / 8000) * 0.75) + (levelTotal) + 55), -(((skillTotal + attack / 6000) * 0.99) + (levelTotal) + 73)
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
