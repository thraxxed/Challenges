# Given two cells on the standard chess board,
# determine whether they have the same color or not.

def chessBoardCellColor(cell1, cell2)
    (cell1[0].ord - cell2[0].ord) % 2 == (cell1[1].to_i - cell2[1].to_i) % 2
end
