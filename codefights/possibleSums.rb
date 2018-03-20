# You have a collection of coins, and you know the values of the coins
# and the quantity of each type of coin in it. You want to know how
# many distinct sums you can make from non-empty groupings of these
# coins.
#
# Example
#
# For coins = [10, 50, 100] and quantity = [1, 2, 1], the output should
# be possibleSums(coins, quantity) = 9.

def possibleSums(coins, quantity)
    sums = {}
    coins.each_with_index do |coin, i|
        sums.keys.each do |prev_sum|
            1.upto(quantity[i]).each do |amount|
               sums[prev_sum + coin * amount] = true
            end
        end
        1.upto(quantity[i]).each do |amount|
           sums[coin * amount] = true
        end
    end
    sums.keys.count
end
