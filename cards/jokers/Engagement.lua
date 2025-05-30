SMODS.Joker {
   key = "engagement",
   blueprint_compat = true,
   rarity = 2,
   cost = 6,
   atlas = 'roffers',
   pos = { x = 2, y = 7 },
   loc_txt = {
      name = 'Engagement',
      text = {
         'Creates a {C:spectral}Spectral{}',
         'if no hands, discards,',
         'or consumables left',
         'at end of round',
         '{C:inactive,s:0.8}Make sure to like and comment!',
         '{C:inactive,s:0.6}(or maybe even be trans   parent)',
      }
   },
   calculate = function(self, card, context)
      if context.end_of_round and context.cardarea == G.jokers and (#G.consumeables.cards + G.GAME.consumeable_buffer) < G.consumeables.config.card_limit and G.consumeables and #G.consumeables.cards == 0 and G.GAME.current_round.hands_left == 0 and G.GAME.current_round.discards_left == 0 then
         G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
         G.E_MANAGER:add_event(Event({func=(
              function()
               SMODS.add_card{ set = 'Spectral' }
               G.GAME.consumeable_buffer = G.GAME.consumeable_buffer - 1
               return true
            end
         )}))
         return {
            colour = G.C.SECONDARY_SET.Spectral,
            message = localize('k_plus_spectral'),
         }
      end
   end,
}