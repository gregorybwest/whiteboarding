# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

# Write a function that takes an array of numbers as an argument
# Set index to 0, while index < array.length
  # If the element at array[index] is greater than or equal to 100, pop is off the array
# Return the original array with the remaining elements

# def less_than_one_hundred(array)
#   index = 0
#   while index < array.length
#     if array[index] >= 100
#       array.delete(array[index])
#     end
#     index += 1
#   end
#   array
# end

# p less_than_one_hundred([99, 101, 88, 4, 2000, 50])

def less_than_one_hundred(array)
  smaller_nums = []
  index = 0
  while index < array.length
    if array[index] < 100
      smaller_nums << array[index]
    end
    index += 1
  end
  smaller_nums
end

p less_than_one_hundred([99, 101, 88, 4, 2000, 50])