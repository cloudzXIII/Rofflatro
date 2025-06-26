--joker list
local joker_list = {
    'Gross Michael',
    'Never Punished',
    'Type A',
    'The Pivot',
    'Jake',
    'Murphy',
    'Crashout',
    'Well Met',
    'DVD',
    'Kalis Banhammer',
    'In-n-Out',
    'Hearthstone',
    'Jackin It',
    'Benus',
    'Grimbo',
    'What Would Doc Do',
    'Looks Inside',
    'Happy Birthday',
    'Avenged Sevenfold',
    'Money Shots',
    'Black Shirt',
    'Main Channel',
    'Thanks For The Primes',
    'Never Skip',
    'Caught In 4K',
    'o7',
    'Voucher Clear',
    'The Thumbnail',
    'Sevens Suck',
    'Speculative Oops',
}
-- load all individual jokers
for _, key in ipairs(joker_list) do
    SMODS.load_file('cards/jokers/'..key..'.lua')()
end
