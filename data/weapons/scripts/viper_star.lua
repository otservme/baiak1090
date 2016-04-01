local combat = Combat()
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_GREENSTAR)
combat:setFormula(COMBAT_FORMULA_SKILL, 0, 0, 1.0, 0)

local condition = Condition(CONDITION_POISON)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)
condition:addDamage(4, 2000, -2)
condition:addDamage(6, 2000, -1)

local secondCombat = Combat()
secondCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
secondCombat:setCondition(condition)

function onUseWeapon(player, var)
	local boolean = combat:execute(player, var)
	if not boolean then
		return false
	end

	local target = var:getNumber()
	if target ~= 0 then
		if math.random(0, 100) > 90 then
			boolean = secondCombat:execute(player, var)
		end
	end
	return boolean
end
