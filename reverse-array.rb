# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

# Input = [2, 4, 6, 8]
# Output = [8, 6, 4, 2]

# Input = [5, 10, 0, -5]
# Output = [-5, 0, 10, 5]

# write a function 
# create a variable set to an empty array that will contain the reversed elements
# using a while loop, iterate through the array 
  # starting at the end of the array, shovel the elements into a new array one at a time
# return the new array

def reverse_array(array)
  reversed_array = []
  index = array.length - 1
  while index >= 0
    reversed_array << array[index]
    index -= 1
  end
  reversed_array
end

p reverse_array([1, 2, 3, 4, 5])









