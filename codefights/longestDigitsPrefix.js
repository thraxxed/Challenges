// Given a string, output its longest prefix which contains only digits.

function longestDigitsPrefix(inputString) {
    let result = "";
    let i = 0;
    while (parseInt(inputString[i]) === parseInt(inputString[i]))
        result += inputString[i++];
    return result;
}
