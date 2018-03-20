# Given an array strings, determine whether it follows the sequence 
# given in the patterns array. In other words, there should be no i
# and j for which strings[i] = strings[j] and patterns[i] ≠ patterns[j]
# or for which strings[i] ≠ strings[j] and patterns[i] = patterns[j]

def areFollowingPatterns(strings, patterns)
    (0...(strings.length-1)).each do |i|
       ((i+1)...(strings.length)).each do |j|
            return false if (strings[i] == strings[j] and patterns[i] != patterns[j]) or
                            (strings[i] != strings[j] and patterns[i] == patterns[j])
        end
    end
    true
end
