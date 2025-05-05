--Main Channel (Rare) - 1 in 25 chance to multiply a value in all owned Jokers by x1.5 when playing a hand. (Wait, he has a main channel?) [see below for explanation]



SMODS.Joker{
	key = 'MainChannel',
	loc_txt = {
		name = 'Main Channel',
		text = {
			'You\'re not supposed to see this!'
		}
	},
	atlas = 'roffers',
	rarity = 3,
	cost = 1,
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 0, y = 0 },
	config = { extra = {
			odds = 25
		}
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {G.GAME.probabilities.normal,card.ability.extra.odds}}
	end,
	calculate = function(self,card,context)
		if context.before then 
			local SHRIMPSPECIAL = pseudorandom('6 DOLLAR SHRIMP SPECIAL')
			if SHRIMPSPECIAL < G.GAME.probabilities.normal / card.ability.extra.odds then
				
				for i = 1, #G.jokers.cards do
					local exclude_extra = {"Canio","Castle","Constellation","Egg","Flash Card","Glass Joker","Glass Joker","Hiker","Hologram","Lucky Cat","Obelisk","Red Card","Ride the Bus","Runner","Square Joker","Spare Trousers","Vampire","Wee Joker","Yorick"}
					local doExclude = false
					for e = 1 , #exclude_extra do
						if G.jokers.cards[i].ability.name == exclude_extra[e]then
							doExclude = true
						end
					end
					
					if G.jokers.cards[i].ability.name ~= "j_roff_MainChannel"then
						if doExclude then
							ROFF.funcs.mod_card_values(G.jokers.cards[i].ability,{
								multiply = 1.5,
								x_protect = true,
								unkeywords = {
									odds = true,
									Xmult_mod = true,
									mult_mod = true,
									chips_mod = true,
									extra = true
								}
							})
						elseif G.jokers.cards[i].ability.name == "Ramen" then
							ROFF.funcs.mod_card_values(G.jokers.cards[i].ability,{
								multiply = 1.5,
								x_protect = true,
								unkeywords = {
									Xmult = true
								}
							})
						else
							ROFF.funcs.mod_card_values(G.jokers.cards[i].ability,{
								multiply = 1.5,
								x_protect = true,
								unkeywords = {
									odds = true,
									Xmult_mod = true,
									mult_mod = true,
									chips_mod = true,
									hand_add = true,
									discard_sub = true
								}
							})
						end
					end
				end	
			return{
				message = "What?"
			}
			elseif not (SHRIMPSPECIAL < G.GAME.probabilities.normal / card.ability.extra.odds )then
				return{
					message = localize("k_nope_ex")
				}
			end
		end
	end
}


