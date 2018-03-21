# The standard (IEEE 802) format for printing MAC-48 addresses in
# human-friendly form is six groups of two hexadecimal digits
# (0 to 9 or A to F), separated by hyphens (e.g. 01-23-45-67-89-AB).
#
# Your task is to check by given string inputString whether it
# corresponds to MAC-48 address or not.

def isMAC48Address(inputString)
    split = inputString.split("-")
    return false unless split.count == 6
    return false if split[-1] and inputString[-1] != split[-1][-1]
    split.each do |hex|
        return false if hex.length != 2
        first_digit = ((hex[0].ord >= 48 and hex[0].ord <= 57) or
                      (hex[0].ord >= 65 and hex[0].ord <= 70))
        second_digit = ((hex[1].ord >= 48 and hex[1].ord <= 57) or
                       (hex[1].ord >= 65 and hex[1].ord <= 70))
        return false unless first_digit and second_digit

    end
    true
end
