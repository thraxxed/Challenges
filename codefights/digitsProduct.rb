# Given an integer product, find the smallest positive
# (i.e. greater than 0) integer the product of whose digits is
# equal to product. If there is no such integer, return -1 instead.

def digitsProduct(product)
   return product if product > 0 and product < 10
   return 10 if product == 0
   result = []
   broke_flag = false
   until product == 1
      9.downto(2).each do |i|
          if product % i == 0
             result << i
             product /= i
             broke_flag = true
             break
          end
       end
       if !broke_flag
          return -1
       else
          broke_flag = false
       end
   end
   result.sort.join.to_i
end
