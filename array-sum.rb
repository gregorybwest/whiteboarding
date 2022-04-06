# Write a function that returns the sum of all numbers in a given array.

# NOTE: Do not use any built-in language functions that do this automatically for you.

# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10

# Write a function "array_sum" that takes in "array" of numbers as an argument
# Create a variable "sum" set to an empty array
# Set index = 0, as long as index is less than length of array, loop through each element of the array starting with array[0], adding each element to the previous element. 
# Return the sum 

# def array_sum(array)
#   sum = 0
#   index = 0
#   while index < array.length
#     sum += array[index]
#     index += 1
#   end
#   sum
# end
# p array_sum([1, 2, 3, 4, 5])

def array_sum(array)
  sum = array[0]
  index = 1
  while index < array.length
    sum += array[index]
    index += 1
  end
  sum
end
p array_sum([1, 2, 3, 4, 5])