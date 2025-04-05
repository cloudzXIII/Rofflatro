SMODS.Joker{
	key = 'grossmichael',
	atlas = 'roffers',
	rarity = 2,
	cost = 5,
	blueprint_compat = true,
	pos = { x = 3, y = 1 },
	config = { extra = { xmult = 1, xmult_mod = 0.2 } },
	loc_vars = function(self,info_queue,card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_gros_michel
		return {vars = {card.ability.extra.xmult_mod, card.ability.extra.xmult}}
	end,
	calculate = function(self,card,context)
		
	end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_code'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
	end
}