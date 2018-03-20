# You will be given two arrays of integers. You will be asked to determine
# all integers that satisfy the following two conditions:
#
# The elements of the first array are all factors of the integer being
# considered
# The integer being considered is a factor of all elements of the second
# array
# These numbers are referred to as being between the two arrays. You must
# determine how many such numbers exist.
#
# Complete the getTotalX function which takes  integer arrays  and  as
# parameters and returns an integer denoting the number of integers
# between the two sets.

def getTotalX(a, b)
  count = 0
  max_el = [a.max, b.max].max
  (1..max_el).each do |i|
    next_flag = false
    a.each do |el|
      next if el == 0
      unless i % el == 0
        next_flag = true
        break
      end
    end
    next if next_flag
    b.each do |el|
      next if el == 0
      unless el % i == 0
        next_flag = true
        break
      end
    end
    next if next_flag
    count += 1
  end
  count
end
