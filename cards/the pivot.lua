SMODS.Joker{
	key = '',
	loc_txt = {
		name = 'The Pivot',
		text = {
			"Gain $10", 
			"when playing 3 consecutive hands of the same kind",
			"that aren't your most played hand.",
			--"{C:inactive}(playing #1#, #2# times){}",
			"{C:inactive}I'’s never too late!{}"
		}
	},
	atlas = 'roffers',
	rarity = 3,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 0, y = 0 },
	config = { extra = {
			dollars = 10,
			joker_hand = "High Card",
			joker_hand_count = 0,
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.joker_hand, card.ability.extra.joker_hand_count}}
	end,
	calculate = function(self,card,context)
		if context.before and context.cardarea == G.jokers and not context.blueprint then
			local tempplayed = 0
			local hand
			for k, v in pairs(G.GAME.hands) do
				if v.played > tempplayed and v.visible then
					tempplayed = v.played
					hand = k
				end
			end
			if context.scoring_name ~= hand then
				if context.scoring_name ~= card.ability.extra.joker_hand then
					card.ability.extra.joker_hand_count = 1 
					card.ability.extra.joker_hand = context.scoring_name
					return {
						message = "reset"
					}
				else
					card.ability.extra.joker_hand_count = card.ability.extra.joker_hand_count + 1
					return {
						message = "Pivot"
					}
				end
			else 
				card.ability.extra.joker_hand_count = 1 
				return {
					message = "reset"
				}
			end
		end
	end,
	set_badges = function (self, card, badges)
		if card.ability.extra.joker_hand_count >= 3 then 
			badges[#badges+1] = create_badge('Active', G.C.GREEN, G.C.WHITE, 0.8)
		else
			badges[#badges+1] = create_badge('Inactive', G.C.RED, G.C.WHITE, 0.8)
		end
	end,
	calc_dollar_bonus = function(self, card)
		local bonus = card.ability.extra.dollars
		if card.ability.extra.joker_hand_count >= 3 and bonus > 0 then return bonus end
	end


}