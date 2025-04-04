SMODS.Joker{
   key = 'wellmet',
   atlas = 'roffers',
	 blueprint_compat = true,
	 eternal_compat = true,
	 pos = { x = 1, y = 1 }, --change if needed
   loc_txt = {
      name = 'Well Met',
      text = {
      '{C:attention}Most{} played card gives',
      '{X:mult,C:white}x2{} Mult when held in hand',
      '{C:inactive}Well met! Well met! Well met!{}'
      }
   },
   rarity = 2,
   cost = 6,
   config = {
      extra = { hold = 0 }
   },
   loc_vars = function(self, info_queue, card)
      return {
         vars = { card.ability.extra.hold }
      }
   end,
   calculate = function(self, card, context)
      if context.individual and context.cardarea == G.play and not context.blueprint then
         for k, v in pairs(G.playing_cards) do
            if v.base.times_played > card.ability.extra.hold then
               card.ability.extra.hold = v.base.times_played
            end
         end
         return {
            message = tostring(context.other_card.base.times_played),
            colour = G.C.RED,
         }
      end
      if context.individual and not context.end_of_round and context.cardarea == G.hand then
         if context.other_card.base.times_played == card.ability.extra.hold then
            if context.other_card.debuff then
               return {
                  message = localize('k_debuffed'),
                  colour = G.C.RED,
                  card = context.other_card,
               } else
               return {
                  x_mult = 2,
                  card = context.other_card,
                  message = 'Well Met!'
               }
            end
         end
      end
   end
}
