# Construct a square matrix with a size N × N containing integers from
# 1 to N * N in a spiral order, starting from top-left and in clockwise
# direction.
#
# Example
#
# For n = 3, the output should be
#
# spiralNumbers(n) = [[1, 2, 3],
#                     [8, 9, 4],
#                     [7, 6, 5]]


def spiralNumbers(n)
    result = Array.new(n) { Array.new(n) { 0 } }
    nums = (1..(n**2)).to_a
    right = [0, 1]
    down = [1, 0]
    left = [0, -1]
    up = [-1, 0]
    new_directions = { right => down, down => left, left => up, up => right}
    current_direction = right
    pos = [0, 0]
    until nums.empty?
       if result[pos[0]] and result[pos[0]][pos[1]] == 0
           result[pos[0]][pos[1]] = nums.shift
       else
           pos[0] -= current_direction[0]
           pos[1] -= current_direction[1]
           # if current_direction == right
           #     current_direction = down
           # elsif current_direction == down
           #     current_direction = left
           # elsif current_direction == left
           #     current_direction = up
           # elsif current_direction == up
           #     current_direction = right
           # end
           current_direction = new_directions[current_direction]
       end
        pos[0] += current_direction[0]
        pos[1] += current_direction[1]
    end
    result
end
