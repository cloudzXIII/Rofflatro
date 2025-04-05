SMODS.Joker{
   key = 'wellmet',
   atlas = 'roffers',
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 2, y = 1 }, --change if needed
   rarity = 2,
   cost = 6,
   config = {
      extra = { xmult = 2, check = nil, flavortext = "Well met! Well met! Well met! ", marqueetimer = 0 }
   },
   loc_vars = function(self, info_queue, card)
      info_queue[#info_queue+1] = {key = 'roff_favorite', set = 'Other'}
      return {
         vars = { card.ability.extra.xmult },
         main_end = { -- epic ui hax (thanks nh for the help)
            {
               n = G.UIT.C,
               config = {align = "bm", minh = 0.3},
               nodes = {
                  {
                     n = G.UIT.O,
                     config = {
                        object = DynaText({
                           string = {{ref_table = card.ability.extra, ref_value = "flavortext"}},
                           colours = {G.C.UI.TEXT_INACTIVE},
                           silent = true,
                           bump = true,
                           scale = 0.256 -- default 0.32 -> mult by 0.8
                        })
                     }
                  }
               }
            }
         }
      }
   end,
   calculate = function(self, card, context)
      if context.individual and not context.end_of_round and context.cardarea == G.hand then
         if context.other_card.ability.roff_favorite then
            if context.other_card.debuff then
               return {
                  message = localize('k_debuffed'),
                  colour = G.C.RED,
                  card = context.other_card,
               } 
            else
               if card.ability.extra.check == nil or card.ability.extra.check == context.other_card then -- reference the first scored favorite card so retrigger effects are possible
                  card.ability.extra.check = context.other_card
                  return {
                     x_mult = card.ability.extra.xmult,
                     card = context.other_card,
                     message = 'Well Met!'
                  }
               end
            end
         end
      end
      if context.after then
      	 card.ability.extra.check = nil
      end
   end,
   update = function(self, card, dt)
       card.ability.extra.marqueetimer = card.ability.extra.marqueetimer + G.real_dt
       if card.ability.extra.marqueetimer > 0.2 then
           card.ability.extra.marqueetimer = 0
           card.ability.extra.flavortext = ROFF.funcs.marquee(card.ability.extra.flavortext)
       end
   end,
	set_badges = function (self, card, badges)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_art'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_canicao_code'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
		badges[#badges+1] = create_badge(localize('k_roff_credit_l6_code'), ROFF.C.credits.Lucky6, G.C.WHITE, 0.8)
	end
}
