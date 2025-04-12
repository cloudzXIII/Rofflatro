--Murphy (Uncommon) - Gain 6$ at end of round if deck has no 9s. (Don’t look! Don’t look!!!)

SMODS.Joker{
	key = 'murphy',
	atlas = 'roffers',
	rarity = 2,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 0, y = 0 },
	config = { extra = {
			nines = 0,
			dollars = 6
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = { card.ability.extra.dollars }}
	end,
	calc_dollar_bonus = function(self, card)
		local bonus = card.ability.extra.dollars
		card.ability.extra.nines = 0
		for k, v in pairs(G.playing_cards) do
			if v:get_id() == 9 then  card.ability.extra.nines = card.ability.extra.nines+1 end
		end
		
		if card.ability.extra.nines == 0 and bonus > 0 then 
			return bonus 				
		end
	end,
	set_badges = function (self, card, badges)
		  badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		 badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_code'), ROFF.C.credits.canicao, G.C.WHITE, 0.8)
	end
}