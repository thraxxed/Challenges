# Let's define digit degree of some positive integer as the number of
# times we need to replace this number with the sum of its digits until
# we get to a one digit number.
#
# Given an integer, find its digit degree.

def digitDegree(n)
    degree = 0
    until n < 10
        sum = 0
        until n < 1
           digit = n % 10
            sum += digit
            n = n / 10
        end
        n = sum
        degree += 1
    end
    degree
end
