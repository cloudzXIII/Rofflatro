SMODS.Joker{
	key = 'getchips',
	atlas = 'roffers',
	rarity = 3,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 1, y = 7 },
	soul_pos = { x = 0, y = 7 },
	config = { extra = { }},
	loc_vars = function(self,info_queue,card)
		return {vars = {}}
	end,
	calculate = function(self,card,context)
		for _, j in ipairs(G.jokers.cards) do
			local ret = SMODS.blueprint_effect(card, j, context)
			if ret then
				local chip_effect = ret.chips or ret.chip_mod
				if chip_effect then
					return {
						chips = chip_effect
					}
				end
			end
		end
	end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_code'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
	end
}
