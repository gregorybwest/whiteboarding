# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

# Input: [0, -3, 100]
# Output: [0. -6, 200]

# Input: []
# Output: []

# Write a function that takes in an array of numbers as an argument
# Create an empty array that will eventually store all the doubled values
# Set index to 0, while index is less than length of array, multiply the element at each index by 2 and shovel it into the empty array that stores doubled nums. 
# Iterate the index
# Return the new array of doubled nums. 

def double(array)
  index = 0
  doubles = []
  while index < array.length
    doubles << array[index] * 2
    index += 1
  end
  doubles
end

# def double(array)
#   array.map { |num| num * 2 }
# end

p double([4, 2, 5, 99, -4])
