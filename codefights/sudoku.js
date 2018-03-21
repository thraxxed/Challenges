// Sudoku is a number-placement puzzle. The objective is to fill a 
// 9 × 9 grid with digits so that each column, each row, and each of
// the nine 3 × 3 sub-grids that compose the grid contains all of the
// digits from 1 to 9.
//
// This algorithm should check if the given grid of numbers represents a
// correct solution to Sudoku.

function sudoku(grid) {
    // Keep track of which numbers we've seen in a particular row/col/square
    let nums = [false, false, false, false, false, false, false, false, false];
    // Iterate through all rows
    for(let row = 0; row < grid.length; row++) {
        reset_nums(nums);
        for(let i = 0; i < grid[row].length; i++) {
            if (nums[grid[row][i] - 1]) return false;
            nums[grid[row][i] - 1] = true;
        }
    }
    // Iterate through all columns
    for(let col = 0; col < grid[0].length; col++) {
        reset_nums(nums);
        for(let i = 0; i < grid.length; i++) {
            if (nums[grid[i][col] - 1 ] ) return false;
            nums[grid[i][col] - 1] = true;
        }
    }
    // Iterate through all squares
    for(let i = 0; i < 3; i++) {
        for(let j = 0; j < 3; j++) {
            reset_nums(nums);
            for(let ii = 3*i; ii < i*3 + 3; ii++) {
                for(let jj = 3*j; jj < j*3 + 3; jj++) {
                    if (nums[grid[ii][jj] - 1]) return false;
                    nums[grid[ii][jj] - 1] = true;
                }
            }
        }
    }
    return true;
}

// Helper method to reset each number to unseen
function reset_nums(nums) {
    for (let i = 0; i < nums.length; i++) nums[i] = false;
}
