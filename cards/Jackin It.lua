SMODS.Joker{
    key = 'jackin_it',
    atlas = 'roffers',
    pos = {x = 1, y = 0},
    rarity = 1, 
	blueprint_compat = true,
    perishable_compat = false,
    cost = 4,
    config = { extra = {mult = 0, mult_mod = 1} },
    loc_vars = function (self, info_queue, card)
        return { vars = {card.ability.extra.mult_mod, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card:get_id() == 11 then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                return {
                    message = localize('k_upgrade_ex'),
                    card = card
                }
            end
        elseif context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}