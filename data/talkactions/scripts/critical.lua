function onSay(player, words, param)
	local skill = player:getCriticalLevel()
	local message = "CRITICAL SYSTEM\nO sistema consiste em ter % de chance de dar um dano critico.\n\nPor Exemplo:\nCada pedra utilizada atribui 0,3% a mais de chance.\nCom 10 pedras, voce tera 3% de chance de hitar um dano critico dos ataques desferidos ao seu oponente.\nCom 100 pedras (maximo), voce tera 30% de chance de hitar um dano critico dos ataques desferidos ao seu oponente.\nCada pedra que voce usar, sua skill de dodge aumenta em 1 ponto.\n\nPara obter a pedra, voce pode comprar no NPC Hyperion, localizado no templo.\nOu atraves de nosso WebShop.\n------------------\nCritical Skill: [" .. skill .. "/100]"
	doPlayerPopupFYI(player, message)
end