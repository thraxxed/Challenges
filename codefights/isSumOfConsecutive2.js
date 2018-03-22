// Find the number of ways to express n as sum of some (at least two)
// consecutive positive integers.

function isSumOfConsecutive2(n) {
    let ways = 0;
    for (let i = 0; i < n; i++) {
        let sum = 0;
        let j = i;
        while (sum < n) {
            sum += j++;
        }
        if (sum === n) ways++;
    }
    return ways;
}
