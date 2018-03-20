# You are given an array of up to four non-negative integers,
# each less than 256.
#
# Your task is to pack these integers into one number M in the
# following way:
#
# The first element of the array occupies the first 8 bits of M;
# The second element occupies next 8 bits, and so on.
# Return the obtained integer M.

def arrayPacking(a)
    result = ""
    a.each do |el|
        bits =  (0b00000000 | el).to_s(2)
        if bits.length < 8
           (8 - bits.length).times do
               bits = "0" + bits
           end
        end
        result = bits + result
    end
    result.to_i(2)
end
