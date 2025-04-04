SMODS.Joker{
	key = 'looksinside',
	atlas = 'roffers',
	rarity = 3,
	blueprint_compat = true,
	eternal_compat = false,
	pos = { x = 1, y = 1 },
	config = { extra = { rounds = 2, timer = 0 } },
	loc_vars = function(self,info_queue,card)
        info_queue[#info_queue+1] = G.P_CENTERS['j_photograph']
        info_queue[#info_queue+1] = G.P_CENTERS['j_hanging_chad']
		return {vars = {card.ability.extra.rounds, card.ability.extra.timer}}
	end,
	calculate = function(self,card,context)
		
	end
}