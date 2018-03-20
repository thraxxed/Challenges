# You are given an array of  integers, a, and a positive integer, k.
# Find and print the number of (i, j) pairs where i < j  and a[i] + a[j]
# is divisible by k.

def divisibleSumPairs(n, k, ar)
    count = 0
    (0...(n-1)).each do |i|
        ((i+1)...n).each do |j|
            count += 1 if (ar[i] + ar[j]) % k == 0
        end
    end
    puts count
end
