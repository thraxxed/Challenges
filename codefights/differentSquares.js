// Given a rectangular matrix containing only digits, calculate the
// number of different 2 × 2 squares in it.
//
// Example
//
// For matrix = [[1, 2, 1],
//              [2, 2, 2],
//              [2, 2, 2],
//              [1, 2, 3],
//              [2, 2, 1]]
// the output should be
// differentSquares(matrix) = 6.

function differentSquares(matrix) {
    let ways = 0;
    let squares = {};
    for (let i = 0; i < matrix.length - 1; i++) {
        for (let j = 0; j < matrix[0].length - 1; j++) {
            let square = [[matrix[i][j], matrix[i][j+1]], [matrix[i+1][j], matrix[i+1][j+1]]];
            if (!squares[square]) ways++;
            squares[square] = true;
        }
    }
    return ways;
}
