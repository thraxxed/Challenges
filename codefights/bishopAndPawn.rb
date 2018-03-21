# Given the positions of a white bishop and a black pawn on the standard
# chess board, determine whether the bishop can capture the pawn in
# one move.
#
# For bishop = "a1" and pawn = "c3", the output should be
# bishopAndPawn(bishop, pawn) = true.

def bishopAndPawn(bishop, pawn)
    bishop_x = bishop[0].ord - 97
    bishop_y = 8 - bishop[1].to_i
    pawn_x = pawn[0].ord - 97
    pawn_y = 8 - pawn[1].to_i
    (pawn_x - bishop_x).abs == (pawn_y - bishop_y).abs
end
