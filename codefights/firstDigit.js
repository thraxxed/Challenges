// Find the leftmost digit that occurs in a given string.

// NOTE: I liked this solution because it makes use of the fact
// that NaN is the only value in javascript which is unequal to
// itself.  Knowing this, we can use parseInt on each character
// in the input string, starting from the left, because we know that
// parseInt, given any non-digit single character input, will return
// NaN

function firstDigit(inputString) {
    for (let i = 0; i < inputString.length; i++) {
        let char = inputString[i];
        let parsed = parseInt(char);
        if (parsed == parsed) return char;
    }
    return null;
}
