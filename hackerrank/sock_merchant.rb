# John works at a clothing store. He has a large pile of socks that he
# must pair them by color for sale.
#
# You will be given an array of integers representing the color of each
# sock. Determine how many pairs of socks with matching colors there are.

def sockMerchant(n, ar)
    pairs = 0
    count = {}
    ar.each do |sock|
        count[sock] = 0 unless count[sock]
        count[sock] += 1
    end
    count.values.each do |value|
        pairs += value/2
    end
    pairs
end
