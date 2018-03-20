// A cryptarithm is a mathematical puzzle for which the goal is to find the
// correspondence between letters and digits, such that the given
// arithmetic equation consisting of letters holds true when the letters
// are converted to digits.
//
// You have an array of strings crypt, the cryptarithm, and an an array
// containing the mapping of letters and digits, solution. The array crypt
// will contain three non-empty strings that follow the structure:
// [word1, word2, word3], which should be interpreted as the
// word1 + word2 = word3 cryptarithm.
//
// If crypt, when it is decoded by replacing all of the letters in the
// cryptarithm with digits using the mapping in solution, becomes a valid
// arithmetic equation containing no numbers with leading zeroes, the
// answer is true. If it does not become a valid arithmetic solution, the
// answer is false.

function isCryptSolution(crypt, solution) {
    let word1 = "";
    for (let i = 0; i < crypt[0].length; i++) {
        for(let j = 0; j < solution.length; j++) {
            if (solution[j][0] == crypt[0][i]) {
                word1 += solution[j][1];
            }
        }
    }
    let word2 = "";
    for (let i = 0; i < crypt[1].length; i++) {
        for(let j = 0; j < solution.length; j++) {
            if (solution[j][0] == crypt[1][i]) {
                word2 += solution[j][1];
            }
        }
    }
    let word3 = "";
    for (let i = 0; i < crypt[2].length; i++) {
        for(let j = 0; j < solution.length; j++) {
            if (solution[j][0] == crypt[2][i]) {
                word3 += solution[j][1];
            }
        }
    }
    if ((word1[0] === "0" && word1.length > 1) ||
        (word2[0] === "0" && word2.length > 1) ||
        (word3[0] === "0" && word3.length > 1))
      return false;
    return (parseInt(word1) + parseInt(word2) == parseInt(word3));
}
