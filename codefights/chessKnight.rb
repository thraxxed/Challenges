# Given a position of a knight on the standard chessboard, find the
# number of different moves the knight can perform.
#
# The knight can move to a square that is two squares horizontally and
# one square vertically, or two squares vertically and one square
# horizontally away from it.

def chessKnight(cell)
    differentials = [[1, 2],
                    [1, -2],
                    [-1, 2],
                    [-1, -2],
                    [2, 1],
                    [2, -1],
                    [-2, 1],
                    [-2, -1]]
    ways = 0
    row = cell[0].ord - 97
    col = 8 - cell[1].to_i
    differentials.each do |diff|
       ways += 1 if in_bounds?(row + diff[0], col + diff[1])
    end
    ways
end

def in_bounds?(row, col)
   row < 8 and row >= 0 and col < 8 and col >= 0
end
