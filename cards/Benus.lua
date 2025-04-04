SMODS.Joker{
	key = 'benus',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 3, y = 0 },
	config = { extra = { dollars = 3, dollars_decrease = 1 }},
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.dollars, card.ability.extra.dollars_decrease}}
	end,
	calculate = function(self,card,context)
		if context.before then
            if next(context.poker_hands['Three of a Kind']) then
                return {dollars = card.ability.extra.dollars}
            else
                return {dollars = -card.ability.extra.dollars_decrease}
            end
        end
	end
}