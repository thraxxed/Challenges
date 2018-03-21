def arrayMaxConsecutiveSum(inputArray, k)
    max_sum = 0
    (0...k).each do |i|
       max_sum += inputArray[i]
    end
    consec_sum = max_sum
    i = k
    while i < inputArray.length
        consec_sum -= inputArray[i - k]
        consec_sum += inputArray[i]
        max_sum = consec_sum if consec_sum > max_sum
        i += 1
    end
    max_sum
end
