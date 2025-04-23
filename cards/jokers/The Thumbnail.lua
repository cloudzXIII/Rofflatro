SMODS.Joker{
	key = 'thumbnail',
	atlas = 'roffers',
	rarity = 2,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 1, y = 5 },
	config = { extra = {
		Xmult = 6,
		requirement = 3
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.Xmult, card.ability.extra.requirement}}
	end,
	calculate = function(self,card,context)
		if context.joker_main then
			if #G.jokers.cards == card.ability.extra.requirement then
				return {
					x_mult = card.ability.extra.Xmult
				}
			end
		end
	end
}
