SMODS.Joker{
	key = '4k',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 5, y = 0 },
	config = { extra = { chips = 75, score_buffer = 1 } },
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.chips}}
	end,
	calculate = function(self,card,context)
		if context.individual and context.cardarea == G.play then

			local first_face = nil
            for i = 1, #context.scoring_hand do
				if context.scoring_hand[i]:is_face() then first_face = context.scoring_hand[i]; break end -- copied code from photograph
			end

			if context.other_card == first_face then
				if card.ability.extra.score_buffer > 0 and not context.blueprint then
					card.ability.extra.score_buffer = card.ability.extra.score_buffer - 1
				else
					return {
						chips = card.ability.extra.chips
					}
				end
			end
            
        elseif context.main then
            card.ability.extra.score_buffer = 1
        end
	end
}