def countApplesAndOranges(s, t, a, b, apples, oranges)
    acount = 0
    apples.each do |distance|
      acount += 1 if a + distance >= s and a + distance <= t
    end
    puts acount
    ocount = 0
    oranges.each do |distance|
      ocount += 1 if b + distance >= s and b + distance <= t
    end
    puts ocount
end
