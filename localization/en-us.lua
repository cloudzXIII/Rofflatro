return {
    descriptions = {
        Joker = {
            j_roff_typeA = {
                name = 'Type A Joker',
                text = {
                    'Gains {X:mult,C:white}X#1#{} Mult if played',
                    'hand is a {C:attention}#3#{}.',
                    'Resets when playing a {C:attention}High Card{}.',
                    'Hand changes at end of round.',
                    '{C:inactive}(Currently {}{X:mult,C:white}X#2#{}{C:inactive} Mult){}',
                    '{s:0.8,C:inactive}Streamer! Play the #3#!{} {s:0.8,C:inactive,E:1}STREAMER!!!{}'
                }
            },
            j_roff_jackin_it = {
                name = 'Jackin\' It',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'for every scored {C:attention}Jack{}',
                    '{C:inactive}(Currently {}{C:mult}+#2#{} {C:inactive}Mult){}',
                    '{s:0.8,C:inactive}On stream? How inappropiate!'
                }
            },
            j_roff_money_shots = {
                name = 'Money Shots',
                text = {
                    "Creates a {C:attention}Hermit{} when",
                    "earning money from a",
                    "{C:attention}Lucky Card{}",
                    "{C:inactive}(Must have room)",
                    "{s:0.8,C:inactive,E:1}Hoooooolyyyyyy..."
                }
            },
            j_roff_benus = {
                name = 'Benus',
                text = {
                    "Earn {C:money}$#1#{} if played hand",
                    "contains {C:attention}Three of a Kind{}",
                    "{C:money}-$#2#{} for every hand that",
                    "doesn't contain {C:attention}Three of a Kind{}",
                    "{C:inactive,s:0.8}What did he just say?!"
                }
            }
        }
    }
}