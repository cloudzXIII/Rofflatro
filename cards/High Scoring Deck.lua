SMODS.Back({
    key = 'highscoring',
    atlas = 'reffs',
    pos = { x = 1, y = 0 },    
    unlocked = true,
    discovered = true,
    config = {},
    loc_vars = function(self, info_queue, card)
    end,
    unlock_condition = {type = 'win_deck', deck = 'b_red'}
})
