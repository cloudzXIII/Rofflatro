SMODS.Atlas {
    key = "roffers",
    path = "Jokers.png",
    px = 71,
    py = 95,
}

-- load common util funcs
assert(SMODS.load_file("globals.lua"))()

-- load all individual jokers
local subdir = "cards"
local cards = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(cards) do
    assert(SMODS.load_file(subdir .. "/" .. filename))()
end
