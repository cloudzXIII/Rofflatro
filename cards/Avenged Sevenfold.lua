SMODS.Joker{
	key = 'a7x',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	pos = { x = 5, y = 1 },
	config = { extra = { mult = 0, mult_mod = 7 } },
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.mult_mod, card.ability.extra.mult}}
	end,
	calculate = function(self,card,context)
		
	end
}