// Sudoku is a number-placement puzzle. The objective is to fill a
// 9 × 9 grid with numbers in such a way that each column, each row,
// and each of the nine 3 × 3 sub-grids that compose the grid all contain
// all of the numbers from 1 to 9 one time.

// Implement an algorithm that will check whether the given grid of
// numbers represents a valid Sudoku puzzle according to the layout
// rules described above. Note that the puzzle represented by grid does
// not have to be solvable.

function sudoku2(grid) {
    for(let row = 0; row < grid.length; row++) {
        let nums = [false, false, false, false, false, false, false, false, false, false];
        for(let i = 0; i < grid[row].length; i++) {
            if (grid[row][i] != '.') {
                if (nums[parseInt(grid[row][i])]) return false;
                nums[parseInt(grid[row][i])] = true;
            }
        }
    }
    for(let col = 0; col < grid[0].length; col++) {
        let nums = [false, false, false, false, false, false, false, false, false, false];
        for(let i = 0; i < grid.length; i++) {
            if (grid[i][col] != '.') {
                if (nums[parseInt(grid[i][col])]) return false;
                nums[parseInt(grid[i][col])] = true;
            }
        }
    }
    for(let i = 0; i < 3; i++) {
        for(let j = 0; j < 3; j++) {
            let nums = [false, false, false, false, false, false, false, false, false, false];
            for(let ii = 3*i; ii < i*3 + 3; ii++) {
                for(let jj = 3*j; jj < j*3 + 3; jj++) {
                    if (grid[ii][jj] != '.') {
                        if (nums[parseInt(grid[ii][jj])]) return false;
                        nums[parseInt(grid[ii][jj])] = true;
                    }
                }
            }
        }
    }
    return true;
}
