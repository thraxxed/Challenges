# You are choreograhing a circus show with various animals. For one act,
# you are given two kangaroos on a number line ready to jump in the
# positive direction (i.e, toward positive infinity).
#
# The first kangaroo starts at location  and moves at a rate of  meters
# per jump.
# The second kangaroo starts at location  and moves at a rate of  meters
# per jump.
# You have to figure out a way to get both kangaroos at the same location
# as part of the show.
#
# Complete the function kangaroo which takes starting location and speed
# of both kangaroos as input, and return  or  appropriately. Can you
# determine if the kangaroos will ever land at the same location at the
# same time? The two kangaroos must land at the same location after making
# the same number of jumps.

def kangaroo(x1, v1, x2, v2)
    if x1 > x2
      if v1 >= v2
        puts "NO"
        return
      end
      until x2 > x1
        if x1 == x2
          puts "YES"
          return
        end
        x1 += v1
        x2 += v2
      end
      puts "NO"
    else
      if v2 >= v1
        puts "NO"
        return
      end
      until x1 > x2
        if x1 == x2
          puts "YES"
          return
        end
        x1 += v1
        x2 += v2
      end
      puts "NO"
    end
end
