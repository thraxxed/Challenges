# Given a string, return its encoding defined as follows:
#
# First, the string is divided into the least possible number of disjoint
# substrings consisting of identical characters
# for example, "aabbbc" is divided into ["aa", "bbb", "c"]
# Next, each substring with length greater than one is replaced with a
# concatenation of its length and the repeating character
# for example, substring "bbb" is replaced by "3b"
# Finally, all the new strings are concatenated together in the same
# order and a new string is returned.
#
# Example
# For s = "aabbbc", the output should be
# lineEncoding(s) = "2a3bc".

def lineEncoding(s)
    with_pipe = ""
    (0...(s.length-1)).each do |i|
        with_pipe += s[i]
        if s[i] != s[i+1]
            with_pipe += "|"
        end
    end
    with_pipe += s[-1]
    subs = with_pipe.split("|")
    result = ""
    subs.each do |sub|
       result += sub.length.to_s if sub.length > 1
       result += sub[0]
    end
    result
end
