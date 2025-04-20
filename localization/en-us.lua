return {
    descriptions = {
        Joker = {
            j_roff_typeA = {
                name = 'Type A Joker',
                text = {
                    'Gains {X:mult,C:white}X#1#{} Mult if played',
                    'hand is a {C:attention}#3#{}',
                    'Resets when playing a {C:attention}Flush{} or lesser',
                    '{s:0.8}Hand changes every round',
                    '{C:inactive}(Currently {}{X:mult,C:white}X#2#{}{C:inactive} Mult){}',
                    '{s:0.8,C:inactive,E:2}Streamer! Play the #3#! {}{s:0.8,C:inactive,E:1}STREAMER!!!{}'
                }
            },
            j_roff_jackin_it = {
                name = 'Jackin\' It',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'for every scored {C:attention}Jack{}',
                    '{C:inactive}(Currently {}{C:mult}+#2#{} {C:inactive}Mult){}',
                    '{s:0.8,C:inactive,E:2}On stream? How inappropiate!'
                }
            },
            j_roff_money_shots = {
                name = 'Money Shots',
                text = {
                    "Creates {C:attention}The Hermit{}",
                    "when earning money",
                    "from a {C:attention}Lucky Card{}",
                    "{C:inactive}(Must have room)",
                    "{s:0.8,C:inactive,E:1}Hoooooolyyyyyy..."
                }
            },
            j_roff_benus = {
                name = 'Benus',
                text = {
                    "Earn {C:money}$#1#{} if played hand",
                    "contains {C:attention}Three of a Kind{}",
                    "{C:money}-$#2#{} if hand doesn't",
                    "contain {C:attention}Three of a Kind{}",
                    "{C:inactive,s:0.8,E:2}What did he just say?!"
                }
            },
            j_roff_primes = {
                name = 'Thanks For The Primes',
                text = {
                    "This Joker gains {C:chips}+#1#{} Chips",
                    "if hand contains {C:attention}#3#{} or more",
                    "scoring {C:attention}2s{}, {C:attention}3s{}, {C:attention}5s{} and/or {C:attention}7s{}",
                    "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                    "{C:inactive,s:0.8,E:2}Shoutouts to {}{C:inactive,s:0.8,E:1}bajabussyblaster!"
                }
            },
            j_roff_4k = {
                name = 'Caught In 4K',
                text = {
                    "{C:chips}+#1#{} Chips for each",
                    "{C:attention}retrigger{} on first",
                    "scored {C:attention}face{} card",
                    "{C:inactive,s:0.8,E:2}Every video is the same."
                }
            },
            j_roff_looksinside = {
                name = 'Looks Inside',
                text = {
                    "After {C:attention}#1#{} rounds {C:inactive}[#2#/#1#]{},",
                    "sell this Joker to create",
                    "{C:attention}Photograph{} and {C:attention}Hanging Chad{}",
                    "{C:inactive}(Must have room)",
                    "{C:inactive,s:0.8,E:2}He can't keep getting away with this!"
                }
            },
            j_roff_wellmet = {
                name = 'Well Met',
                text = {
                    "First card held in hand",
                    "with {C:attention}Favorite{} sticker",
                    "gives {X:mult,C:white}X#1#{} Mult" -- flavor text is done via gui dynatext shenanigans
                }
            },
            j_roff_grossmichael = {
                name = 'Gross Michael',
                text = {
                    "Creates {C:attention}Gros Michel{} at end of shop",
                    "Gains {X:mult,C:white}X#1#{} Mult per {C:attention}Gros Michel{}",
                    "owned at end of round",
                    "{C:attention}Destroyed{} with {C:attention}Gros Michel{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8,E:2}Ew! Why won't you {C:inactive,s:0.8,E:1}DIE?!"
                }
            },
            j_roff_dvd = {
                name = 'DVD',
                text = {
                    "Gains {C:chips}+#1#{} Chips when",
                    "any {C:green}probability{} effect",
                    "{C:attention}fails{} to trigger",
                    "{C:inactive}(Currently {C:chips}+#2# {C:inactive}Chips)",
                    "{C:inactive,s:0.8,E:2}It hit the corner! I saw it!"
                }
            },
            j_roff_a7x = {
                name = 'Avenged Sevenfold',
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "if played hand contains",
                    "an {C:attention}Ace{} and a {C:attention}7{}",
                    "{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult)",
                    "{C:inactive,s:0.8,E:2}It's not funny guys."
                }
            },
            j_roff_in_n_out = {
                name = 'In-n-Out',
                text = {
                    "This Joker gains {C:chips}+#1#{} Chips",
                    "when {C:red}no{} {C:attention}rerolls{} are used",
                    "in a {C:attention}shop{}",
                    "{C:inactive}(Currently {C:chips}+#2# {C:inactive}Chips)",
                    "{C:inactive,s:0.8,E:2}So much better than Chick-Fil-A!"
                }
            },
            j_roff_never_punished = {
                name = 'Never Punished',
                text = {
                    "Sell this Joker in a {C:attention}Boss Blind",
                    "to create a {C:attention}Glass face{} card",
                    "and draw to hand",
                    "{C:inactive,s:0.8,E:2}It's called skill."
                }
            },
            j_roff_pivot = {
                name = 'The Pivot',
                text = {
                    'Earn {C:money}$#1#{} at end of round',
                    "after playing a hand that isn't your",
                    "most played {C:attention}#2#{} times in a row",
                    "{C:inactive,s:0.8,E:2}Never too late!"
                }
            },
            j_roff_jake = {
                name = 'Jake',
                text = {
                    "This Joker gains {X:mult,C:white}X#2#{} Mult",
                    "for each {C:attention}Diet Cola{}",
                    "sold this run",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8,E:2}Always take the Cola. {C:inactive,s:0.8,E:1}ALWAYS."
                }
            },
            j_roff_black_shirt = {
                name = 'Black Shirt',
                text = {
                    "This Joker gains {X:mult,C:white}X#1#{} Mult",
                    "if played hand contains",
                    "{C:attention}Four of a Kind{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8,E:2}Wonder what his wardrobe looks like..."
                }
            },
            j_roff_murphy = {
                name = 'Murphy',
                text = {
                    "Gain {C:money}$#1#{} at end of round",
                    "if deck has no {C:attention}9s",
                    "{C:inactive,s:0.8,E:2}Don't look! {C:inactive,s:0.8,E:1}Don't look!!!"
                }
            },
            j_roff_hearthstone = {
                name = 'Hearthstone?',
                text = {
                    "Scored {C:attention}Wild Cards{} get",
                    "a random {C:attention}Seal",
                    "{C:inactive,s:0.8,E:2}What's that? Never heard of it."
                }
            },
            j_roff_o7 = {
                name = 'o7',
                text = {
                    "If scored chips are at least",
                    "{C:attention}50%{} of required chips,",
                    "prevents {C:attention}death{} and gives {C:money}$#1#{}",
                    "{S:1.1,C:red,E:2}Self destructs{}",
                    "{C:inactive,s:0.8,E:2}False alarm guys!"
                }
            },
            j_roff_sevens = {
                name = "Sevens Suck",
                text = {
                    "Scored {C:attention}7s{} have",
                    "a {C:green}#1# in #2#{} chance to",
                    "give {X:mult,C:white}X#3#{} Mult",
                    "{C:inactive,s:0.8,E:2}ZERO synergies. Horrible.",
                    "{C:inactive,s:0.6,E:2}Wait, have I seen this one before?"
                }
            },
        },
    Back = 
    {
        b_roff_streamerluck = {
            name = "Streamer Deck",
            text = {
                "{C:attention}Non-common{} Jokers appear",
                "{C:attention}4x{} more often",
                "{E:1,C:inactive,s:0.8}(Is this run seeded?)",
            },
        },
    },
    Mod = 
    {
        Roffle = {
            name = "Rofflatro",
            text = {
                "A vanilla-friendly mod made for {C:chips,E:1}Roffle!{}",
                " ",
                "{s:1.5,C:attention,E:2}Credits:",
                "{C:dark_edition,E:2}Lucky6(AlrexX){} - Lead, Art, Code",
                "{C:dark_edition,E:2}Maxx{} - Design, Art, Code",
                "{C:dark_edition,E:2}canicao{} - Design, Code",
                "{C:dark_edition,E:2}garb{} - Code",
                "{C:dark_edition,E:2}UHadMeAtFood{} - Art, Code",
                " ",
                "{s:1.5,C:attention,E:2}Also Try:",
                "{C:dark_edition,E:1}GARBSHIT{}, {C:dark_edition,E:1}Lucky Jimbos/Legends{}, {C:dark_edition,E:1}Bountiful Update{}",
                " ",
                "{s:0.9}Special thanks to the {C:attention,s:0.9}Balatro Discord!{}"
            }
        }
    }
},
    misc = {
        dictionary = {
            k_roff_wellmet_flavor = 'Well Met! Well Met! Well Met! ',
            k_roff_gross_dead = 'Good Riddance!',
            k_roff_gross_add_banana = 'Gross!',
            k_roff_pivot_active = 'Pivot!',
            k_roff_inout_fail = 'Bad taste!',
            k_roff_o7_saved = 'Close one chat',

            k_roff_credit_l6_art = 'Art: Lucky6/AlrexX',
            k_roff_credit_l6_code = 'Code: Lucky6/AlrexX',
            k_roff_credit_maxx_art = 'Art: Maxx',
            k_roff_credit_maxx_code = 'Code: Maxx',
            k_roff_credit_canicao_code = 'Code: canicao',
            k_roff_credit_garb_code = 'Code: garb',
            k_roff_credit_uhadme_art = 'Art: UHadMeAtFood',
            k_roff_credit_uhadme_code = 'Code: UHadMeAtFood',
            k_roff_credit_splatter_art = 'Art: splatter'
        }
    }
}
