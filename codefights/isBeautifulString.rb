# A string is said to be beautiful if b occurs in it no more times than
# a; c occurs in it no more times than b; etc.
#
# Given a string, check whether it is beautiful.

def isBeautifulString(inputString)
    char_counts = Array.new(26) { 0 }
    inputString.each_char do |c|
       char_counts[c.ord - 97] += 1
    end
    (0...25).each do |i|
       return false if char_counts[i + 1] > char_counts[i]
    end
    true
end
