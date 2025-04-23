--Jake (Uncommon) - This Joker gains x1 Mult for every Diet Cola sold this run. (Always take the Cola. ALWAYS.)

SMODS.Joker:take_ownership('diet_cola',{
calculate = function (self, card, context)
	if context.selling_self then
		ROFF.vars.colas_sold = ROFF.vars.colas_sold + 1
	end
end

}, 
true)

SMODS.Joker{
	key = "jake",
	atlas = 'roffers',
	rarity = 2,
	cost = 3,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 5, y = 3 },
	
	config = {
		extra = {
			Xmult = 1,
			Xmult_mod = 1
		}
	},
	loc_vars = function(self,info_queue,card)
		info_queue[#info_queue+1] = G.P_CENTERS.j_diet_cola
		return{vars = {card.ability.extra.Xmult, card.ability.extra.Xmult_mod}}
	end,
	calculate = function (self, card, context)
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end,
	update = function (self, card, dt)
		card.ability.extra.Xmult = 1 + (ROFF.vars.colas_sold * card.ability.extra.Xmult_mod)
	end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_code'), ROFF.C.credits.uhadme, G.C.WHITE, 0.8)
	end
}
