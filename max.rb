# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

# Input: [0, -1, 1]
# Output: 1

# Write a function that takes in an array of numbers as an argument
# Set a variable "largest_num" equal to the first element in the array
# Loop through the array, starting at index 1
  # If num at current index is > largest_num, set largest_num equal to that current_index
  # Increment index
# Return largest_num

def max_num(array)
  largest_num = array[0]
  index = 1
  while index < array.length
    if array[index] > largest_num
      largest_num = array[index]
    end
    index += 1
  end
  largest_num
end

# def max_num(array)
#   array.max
# end

p max_num([5, 17, -4, 20, 12])



