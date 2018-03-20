# You have a list of dishes. Each dish is associated with a list of
# ingredients used to prepare it. You want to group the dishes by
# ingredients, so that for each ingredient you'll be able to find all
# the dishes that contain it (if there are at least 2 such dishes).
#
# Return an array where each element is a list with the first element
# equal to the name of the ingredient and all of the other elements
# equal to the names of dishes that contain this ingredient. The dishes
# inside each list should be sorted lexicographically. The result array
# should be sorted lexicographically by the names of the ingredients in
# its elements.



def groupingDishes(dishes)
    ingredients = {}
    result = []
    dishes.each do |dish|
        dish.each_with_index do |ingredient, i|
            next if i == 0
            ingredients[ingredient] = [] if !ingredients[ingredient]
            ingredients[ingredient] << dish[0]
        end
    end
    ingredients.keys.each do |key|
       result << [key] + ingredients[key].sort if ingredients[key].length > 1
    end
    result.sort
end
