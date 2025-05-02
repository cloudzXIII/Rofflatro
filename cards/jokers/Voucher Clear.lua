SMODS.Joker{
	key = 'voucherclear',
	atlas = 'roffers',
	rarity = 2,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 1, y = 5 },
	config = { extra = {
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {}}
	end,
	calculate = function(self,card,context)

		if context.selling_self and G.shop_vouchers.cards then

			for i = 1, #G.shop_vouchers.cards do
					-- This part destroys the G.shop_vouchers.cards[i].
					play_sound('tarot1')
					G.shop_vouchers.cards[i]:start_dissolve({HEX("57ecab")}, nil, 1.6)
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.3,
						blockable = false,
						func = function()
							G.GAME.current_round.voucher.spawn[G.shop_vouchers.cards[i].config.center_key] = false
							G.jokers:remove_card(G.shop_vouchers.cards[i])
							--G.shop_vouchers.cards[i]:remove()
							G.shop_vouchers.cards[i] = nil
							return true;
						end
					}))
				end
			end
		end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_uhadme_code'), ROFF.C.credits.uhadme, G.C.WHITE, 0.8)
	end
}
