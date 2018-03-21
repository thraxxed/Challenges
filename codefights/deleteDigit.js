// Given some integer, find the maximal number you can obtain by 
// deleting exactly one digit of the given number.

function deleteDigit(n) {
    let str = "" + n;
    let max = parseInt(str.slice(1, str.length));
    for (let i = 1; i < str.length; ++i ) {
        let curr = parseInt(str.slice(0, i) + str.slice(i + 1));
        if (curr > max) max = curr;
    }
    return max;
}
