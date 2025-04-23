SMODS.Joker{
	key = 'birthday',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 5, y = 4 },
	config = { extra = { options = 1 } },
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.options}}
	end,
	calculate = function(self,card,context)
		
	end,
	set_badges = function (self, card, badges)
		  badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
	end
}