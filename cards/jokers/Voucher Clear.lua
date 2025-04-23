SMODS.Joker{
	key = 'voucherclear',
	atlas = 'roffers',
	rarity = 2,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 1, y = 5 },
	config = { extra = { } },
	config = { extra = {
			in_Shop = true
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {}}
	end,
	calculate = function(self,card,context)
		if context.starting_shop then
			card.ability.extra.in_Shop = true
		end

		if context.ending_shop then
			card.ability.extra.in_Shop = false
		end

		if context.selling_self and card.ability.extra.in_Shop then
			print( G.GAME.current_round.voucher )
			G.E_MANAGER:add_event(Event({
				func = function()
					local _v = G.shop_vouchers.cards[1]
					play_sound('tarot1')
					_v.T.r = -0.2
					_v:juice_up(0.3, 0.4)
					_v.states.drag.is = true
					_v.children.center.pinch.x = true
					-- This part destroys the _v.
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.3,
						blockable = false,
						func = function()
							G.jokers:remove_card(_v)
							_v:remove()
							_v = nil
							return true;
						end
					}))
					return true
				end
			}))
			G.GAME.used_jokers[G.GAME.current_round.voucher] = true
		end 
	end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_code'), ROFF.C.credits.uhadme, G.C.WHITE, 0.8)
	end
}
