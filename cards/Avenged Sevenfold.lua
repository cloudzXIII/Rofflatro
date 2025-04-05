SMODS.Joker{
	key = 'a7x',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	perishable_compat = false,
	pos = { x = 5, y = 1 },
	config = { extra = { mult = 0, mult_mod = 7 } },
	loc_vars = function(self,info_queue,card)
		return {vars = {card.ability.extra.mult_mod, card.ability.extra.mult}}
	end,
	calculate = function(self,card,context)
		if context.before and not context.blueprint then
            local hasA, has7 = false, false

            for _, c in pairs(G.play.cards) do
                if c:get_id() == 7 then
                    has7 = true
                    break
                end
            end

            for _, c in pairs(G.play.cards) do
                if c:get_id() == 14 then
                    hasA = true
                    break
                end
            end

            if has7 and hasA then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                return {
                    message = localize('k_upgrade_ex')
                }
            end
        elseif context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
	end
}