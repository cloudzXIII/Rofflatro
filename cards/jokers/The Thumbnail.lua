SMODS.Joker{
   key = 'thumbnail',
   atlas = 'roffers',
   rarity = 2,
   cost = 6,
   blueprint_compat = true,
   eternal_compat = true,
   pos = { x = 1, y = 5 },
   config = { extra = {
      Xmult = 3,
      requirement = 3
      }
   },
   loc_vars = function(self,info_queue,card)
      return {vars = {card.ability.extra.Xmult, card.ability.extra.requirement}}
   end,
   calculate = function(self,card,context)
      if context.joker_main then
         if #G.jokers.cards == card.ability.extra.requirement then
            return {
            x_mult = card.ability.extra.Xmult
            }
	 end
      end
   end,
   set_badges = function (self, card, badges)
      badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
      badges[#badges+1] = create_badge(localize('k_roff_credit_canicao_code'), ROFF.C.credits.canicao, ROFF.C.credits.canicao_text, 0.8)
   end
}
