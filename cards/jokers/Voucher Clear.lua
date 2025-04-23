SMODS.Joker{
	key = 'voucherclear',
	atlas = 'roffers',
	rarity = 2,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 1, y = 5 },
	config = { extra = { } },
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_code'), ROFF.C.credits.uhadme, G.C.WHITE, 0.8)
	end
}