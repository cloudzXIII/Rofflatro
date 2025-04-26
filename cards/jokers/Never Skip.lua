SMODS.Joker{
	key = 'neverskip',
	atlas = 'roffers',
	rarity = 2,
	cost = 5,
	blueprint_compat = false,
	eternal_compat = false,
	pos = { x = 3, y = 5 },
	loc_vars = function(self,info_queue,card)
        info_queue[#info_queue+1] = G.P_TAGS.tag_investment
        info_queue[#info_queue+1] = G.P_TAGS.tag_voucher
		return {vars = {}}
	end,
	calculate = function(self,card,context)
		if context.skip_blind and not context.blueprint then
            G.E_MANAGER:add_event(Event({
                func = (function()
                    add_tag(Tag('tag_investment'))
                    play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                    return true
                end)
            }))
            G.E_MANAGER:add_event(Event({
                trigger = after,
                delay = 0.25,
                func = (function()
                    add_tag(Tag('tag_voucher'))
                    play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                    return true
                end)
            }))
            G.E_MANAGER:add_event(Event({
                trigger = after,
                delay = 0.5,
                func = (function()
                    card:start_dissolve()
                    return true
                end)
            }))
        end
	end
}