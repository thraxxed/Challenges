# Lily has a chocolate bar consisting of a row of n squares where each
# square has an integer written on it. She wants to share it with
# Ron for his birthday, which falls on month m and day d. Lily wants to
# give Ron a piece of chocolate only if it contains m consecutive squares
# whose integers sum to d.
#
# Given m, d, and the sequence of integers written on each square of Lily's
# chocolate bar, how many different ways can Lily break off a piece of
# chocolate to give to Ron?

def solve(n, s, d, m)
    ways = 0
    0.upto(n - m).each do |start|
        sum = 0
        (start...(start + m)).each do |i|
            sum += s[i]
        end
        ways += 1 if sum == d
    end
    ways
end
