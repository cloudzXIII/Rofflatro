SMODS.Joker{
	key = 'typeA',
	loc_txt = {
		name = 'Type A Joker',
		text = {
			'Gains {X:mult,C:white}X#1#{} Mult if played',
			'hand is a {C:attention}#3#{}.',
			'Resets when playing a {C:attention}High Card{}.',
			'Hand changes at end of round.',
			'{C:inactive}(Currently {}{X:mult,C:white}X#2#{}{C:inactive} mult){}',
		}
	},
	atlas = 'roffers',
	rarity = 3,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 0, y = 1 },
	config = { extra = {
			extra = 1.5,
			x_mult = 1,
			handsel = 'Pair'
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.extra, card.ability.extra.x_mult, card.ability.extra.handsel}}
	end,
	calculate = function(self,card,context)
		if context.before and next(context.poker_hands[card.ability.extra.handsel]) and not context.blueprint then
			card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.extra
			return {
				message = 'Upgraded!',
				colour = G.C.XMULT,
				card = card
			}
		end
		if context.before and next(context.poker_hands['High Card']) and not context.blueprint then
			if card.ability.extra.x_mult > 1 then
				card.ability.extra.x_mult = 1
				return {
					card = card,
					message = localize('k_reset')
				}
			end
		end
		if context.joker_main then
			return {
				Xmult_mod = card.ability.extra.Xmult
			}
		end
		if context.end_of_round then
			local _poker_hands = { "Flush Five", "Flush House", "Five of a Kind", "Straight Flush", "Four of a Kind", "Full House",}
			card.ability.extra.handsel = pseudorandom_element(_poker_hands, pseudoseed('type_A'))
			return {
				message = 'Streamer!'
			}
		end
	end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_maxx_code'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
	end
}