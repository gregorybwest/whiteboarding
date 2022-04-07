# Description
# Given an array of numbers, write a function that returns a new array in which only select numbers from the original array are included, based on the following details:

# The new array should always start with the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right. This number gets added to the new array. If this next number happens to be a 4, then the next number after that is the one four spaces to the right. And so on and so forth until the end of the array is reached.

# Input:
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]

# Output:
# [2, 3, 1, 2, 2, 1, 5, 2, 2]

# Input:
# [3, 1]

# Output:
# [3]

# Write a function that takes an array of numbers not including zero (this will create infinite loop) as an argument
# Make a variable set to an empty array that will store the non-skipped numbers
# Set an index to 0
# Loop through the array while index is less than array.length
  # Add the number at current index to non-skipped numbers array
  # Increment index by whatever number we're currently at in the loop
# Return the non-skipped numbers array


def skip_it(nums)
  non_skipped = []
  index = 0
  while index < nums.length
    non_skipped << nums[index]
    index += nums[index]
  end
  non_skipped
end

p skip_it([2, 2, -1])  

# ==> [2, -1, 2]

p skip_it([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2])   

# ==> [2, 3, 1, 2, 2, 1, 5, 2, 2]

