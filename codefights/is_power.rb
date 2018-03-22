# Determine if the given number is a power of some non-negative integer.

def isPower(n)
    return true if Math.sqrt(n) == Math.sqrt(n).floor
    i = 2
    until i > Math.sqrt(n)
        prod = i
        until prod >= n
            prod *= i
        end
        return true if prod == n
        i += 1
    end
    false
end
