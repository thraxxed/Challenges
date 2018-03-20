# Given array of integers, remove each kth element from it.

def extractEachKth(inputArray, k)
    target_idx = k - 1
    result = []
    inputArray.each_with_index do |el, i|
       if i == target_idx
           target_idx += k
       else
           result << el
       end
    end
    result
end
