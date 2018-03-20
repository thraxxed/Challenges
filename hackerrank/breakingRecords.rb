# Maria plays  games of college basketball in a season. Because she wants
# to go pro, she tracks her points scored per game sequentially in an
# array defined as . After each game , she checks to see if score  breaks
# her record for most or least points scored so far during that season.

# Given Maria's array of  for a season of  games, find and print the
# number of times she breaks her record for most and least points
# scored during the season.
#
# Note: Assume her records for most and least points at the start of
# the season are the number of points scored during the first game of
# the season.

def breakingRecords(score)
    bestcount = 0
    worstcount = 0
    best = score[0]
    worst = score[0]
    (1...score.length).each do |i|
        if score[i] > best
           bestcount += 1
           best = score[i]
        end
        if score[i] < worst
            worstcount += 1
            worst = score[i]
        end
    end
    [bestcount, worstcount]
end
