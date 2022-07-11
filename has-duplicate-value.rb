# write a function that returns true if the given array contains at least one duplicate value, and false if it contains no duplicate values

# input: [3, 5, 9, 4]
# output: false

# input: [3, 5, 7, 9, 3]
# output: true

# def has_duplicate_value?(array)
#   i = 0
#   while i < array.length
#     j = 0
#     while j < array.length
#       if i != j && array[i] == array[j]
#         return true
#       end
#       j += 1
#     end
#     i += 1
#   end
#   return false
# end

# p has_duplicate_value?([3, 5, 9, 4]) == false
# p has_duplicate_value?([3, 5, 7, 9, 3]) == true

def has_duplicate_value?(array)
  number_hash = {}
  array.each do |number|
    if number_hash[number]
      return true
    else
      number_hash[number] = 1
    end
  end
  return false
end

p has_duplicate_value?([3, 5, 9, 4]) == false
p has_duplicate_value?([3, 5, 7, 9, 3]) == true