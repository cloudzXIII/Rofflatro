SMODS.Joker{
	key = 'grossmichael',
	atlas = 'roffers',
	rarity = 2,
	blueprint_compat = true,
	pos = { x = 3, y = 1 },
	config = { extra = { xmult = 1, xmult_mod = 0.2 } },
	loc_vars = function(self,info_queue,card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_gros_michel
		return {vars = {card.ability.extra.xmult_mod, card.ability.extra.xmult}}
	end,
	calculate = function(self,card,context)
		
	end
}