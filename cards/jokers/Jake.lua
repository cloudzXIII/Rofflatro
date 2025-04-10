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
	rarity = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 0, y = 0 },
	
	config = {
		extra = {
			Xmult = 1,
			Xmult_mod = 1
		}
	},
	loc_vars = function(self,info_queue,card)
		info_queue[#info_queue+1] = G.P_CENTERS.j_diet_cola

		local m = card.ability.extra.Xmult + (ROFF.vars.colas_sold * card.ability.extra.Xmult_mod)
		return{vars = {m, card.ability.extra.Xmult_mod}}
	end,
	calculate = function (self, card, context)
		local m = card.ability.extra.Xmult + (ROFF.vars.colas_sold * card.ability.extra.Xmult_mod)
		if context.joker_main then
			return {
				Xmult = m
			}
		end
	end
}
