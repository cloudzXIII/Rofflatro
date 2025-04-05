SMODS.Back({
    key = 'streamerluck',
    atlas = 'reffs',
    pos = { x = 0, y = 0 },    
    unlocked = true,
    discovered = true,
    config = {},
    loc_vars = function(self, info_queue, card)
    end,
    unlock_condition = {type = 'win_deck', deck = 'b_red'},
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_garb_code'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
	end
})
