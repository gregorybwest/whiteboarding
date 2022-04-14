# Given an array of numbers, return a new array of just two numbers that add up to the number 10. If there are not two numbers that add up to 10, return false

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]

# Write a function that takes in an array of numbers as an argument
# Look at each element in the array
  # For each element, look at every other element in the array
    # If the two elements we're looking at have a sum of 10, add those two numbers to a new array containing only those two numbers
# If we finish looping through the array and haven't found two numbers that add up to 10, return false

def two_sum(nums)
  index = 0
  two_sum_array = []
  while index < nums.length
    index2 = 0
    while index2 < nums.length
      if index != index2
        if nums[index] + nums[index2] == 10
          two_sum_array.push(nums[index], nums[index2])
          return two_sum_array
        end
      end
      index2 += 1
    end
    index += 1
  end
  return false
end

p two_sum([2, 5, 3, 1, 0, 7, 11])
p two_sum([1, 2, 3, 4, 5])
p two_sum([2, 5, 1, 0, 7, 11, 9])