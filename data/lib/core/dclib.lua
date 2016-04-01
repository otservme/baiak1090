-- Configuração
DODGE = {
	STORAGE =   48900, -- player storage do sistema
	LEVEL_MAX = 100, -- máximo de dodge level que o player pode alcançar
	PERCENT = 0.5 -- porcentagem que irá defender o ataque [padrão 50% = 0.5]
}

CRITICAL = {
	STORAGE =   48901, -- player storage do sistema
	LEVEL_MAX = 100, -- máximo de critical level que o player pode alcançar
	PERCENT = 0.5 -- porcentagem que irá aumentar o ataque [padrão 50% = 0.5]
}

function Player.getDodgeLevel(self)
	return self:getStorageValue(DODGE.STORAGE)
end

function Player.setDodgeLevel(self, value)
	return self:setStorageValue(DODGE.STORAGE, value)
end

function Player.getCriticalLevel(self)
	return self:getStorageValue(CRITICAL.STORAGE)
end

function Player.setCriticalLevel(self, value)
	return self:setStorageValue(CRITICAL.STORAGE, value)
end