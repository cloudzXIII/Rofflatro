-- atlas definitions
SMODS.Atlas {
    key = "roffers",
    path = "Jokers.png",
    px = 71,
    py = 95,
}

SMODS.Atlas {
    key = "rickers",
    path = "Stickers.png",
    px = 71,
    py = 95,
}

SMODS.Atlas {
    key = "reffs",
    path = "Decks.png",
    px = 71,
    py = 95,
}

-- load common util funcs
assert(SMODS.load_file("globals.lua"))()
--assert(SMODS.load_file("No Favorites.lua"))()

-- load all individual cards
local subdir = "cards"
local cards = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(cards) do
    if string.sub(filename, string.len(filename) - 3) == '.lua' then
        assert(SMODS.load_file(subdir .. "/" .. filename))()
    end
end

local challenges = NFS.getDirectoryItems(SMODS.current_mod.path .. "challenges")
for _, chal in pairs(challenges) do
    if string.sub(chal, string.len(chal) - 3) == '.lua' then
        assert(SMODS.load_file("challenges/" .. chal))()
    end
end

--favorite card calc
local igo = Game.init_game_object
function Game:init_game_object()
    local ret = igo(self)
    ret.current_round.most_played_card_amount = 0
    return ret
end

function SMODS.current_mod.reset_game_globals(run_start)
    if not run_start and G.playing_cards then
        for _, c in pairs(G.playing_cards) do
            if c.base.times_played > G.GAME.current_round.most_played_card_amount then
                G.GAME.current_round.most_played_card_amount = c.base.times_played
            end
        end
        if G.GAME.current_round.most_played_card_amount > 0 then
            for _, c in pairs(G.playing_cards) do
                if c.base.times_played == G.GAME.current_round.most_played_card_amount then
                    c:add_sticker('roff_favorite', true)
                elseif c.ability.roff_favorite then
                    c.ability.roff_favorite = false
                end
            end
        end
    end
end

SMODS.current_mod.description_loc_vars = function()
    return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2 }
end
