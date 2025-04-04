SMODS.Joker{
	key = 'primes',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 4, y = 0 },
	config = { extra = { chips = 0, chip_mod = 11, min_cards = 3 } },
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.chip_mod, card.ability.extra.chips, card.ability.extra.min_cards}}
	end,
	calculate = function(self,card,context)
		if context.before and not context.blueprint then
            if #context.scoring_hand > 1 then
                local primes = 0
                for _, c in pairs(context.scoring_hand) do
                    local id = c:get_id()
                    if id == 2 or id == 3 or id == 5 or id == 7 then
                        primes = primes + 1
                    end

                    if primes >= card.ability.extra.min_cards then break end
                end

                if primes >= card.ability.extra.min_cards then
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
                    return {
                        message = localize('k_upgrade_ex')
                    }
                end
            end
        elseif context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
	end
}