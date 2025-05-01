

SMODS.Joker{
	key = 'Grimbo',
	atlas = 'roffers',
	rarity = 1,
	cost = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 3, y = 6 },
	config = { extra = {
			dollars = 1
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.dollars}}
	end,
	calculate = function(self,card,context)
		if context.before and context.cardarea == G.jokers then
			return {
				dollars = card.ability.extra.dollars
			}
		end

		if context.discard then
			local dollars = card.ability.extra.dollars * -1
			return {
				dollars = dollars
			}
		end

	end
}
