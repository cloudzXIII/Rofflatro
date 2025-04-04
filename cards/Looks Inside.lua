SMODS.Joker{
	key = 'looksinside',
	atlas = 'roffers',
	rarity = 3,
	cost = 7,
	eternal_compat = false,
	pos = { x = 1, y = 1 },
	config = { extra = { rounds = 2, timer = 0, juiced = false } },
	loc_vars = function(self,info_queue,card)
        info_queue[#info_queue+1] = G.P_CENTERS['j_photograph']
        info_queue[#info_queue+1] = G.P_CENTERS['j_hanging_chad']
		return {vars = {card.ability.extra.rounds, card.ability.extra.timer}}
	end,
	calculate = function(self,card,context)
		if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
			card.ability.extra.timer = card.ability.extra.timer + 1
			if card.ability.extra.timer >= card.ability.extra.rounds then
				if not card.ability.extra.juiced then
					local eval = function(card) return not card.REMOVED end
					juice_card_until(card, eval, true)
					card.ability.extra.juiced = true
				end
				return {
					message = localize('k_active_ex')
				}
			else
				return {
					message = card.ability.extra.timer .. "/" .. card.ability.extra.rounds
				}
			end
		elseif context.selling_self and card.ability.extra.timer >= card.ability.extra.rounds and not context.blueprint then
			if #G.jokers.cards <= G.jokers.config.card_limit then
				G.E_MANAGER:add_event(Event({
					func = function()
						SMODS.add_card({set = 'Joker', area = G.jokers, key = 'j_photograph'})
						if #G.jokers.cards < G.jokers.config.card_limit then
							SMODS.add_card({set = 'Joker', area = G.jokers, key = 'j_hanging_chad'})
						else
							SMODS.calculate_effect({ message = localize('k_no_room_ex') }, card)
						end
						return true
					end
				}))
			else
				return { message = localize('k_no_room_ex') }
			end
		end
	end
}