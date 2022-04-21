# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# A "100 Coolio Array" meets the following criteria:

# Its first and last numbers add up to 100,
# Its second and second-to-last numbers add up to 100,
# Its third and third-to-last numbers add up to 100,
# and so on and so forth.

# Here are examples of 100 Coolio Arrays:

# [1, 2, 3, 97, 98, 99]
# [90, 20, 70, 100, 30, 80, 10]

# write a function that takes an array of numbers as an argument
# check if the array has an even number of elements, if not, return false
# run a single loop with two starting points, one at the beginning of the array and one at the end
  # if the two values equal 100, increment the first pointer and decrement the second pointer
  # if they don't equal 100, return false
# if we reach the end of the loop without returning false, the array must be a 100 coolio array, so return true

def hundred_coolio_array(nums)
  index = 0
  index2 = -1 
  while index < nums.length / 2 
    if nums[index] + nums[index2] != 100
      return false
    end
    index += 1
    index2 -= 1
  end
  # if the array has a middle element, check if it's value is 100
  if nums.length % 2 == 1
    if nums[nums.length / 2] == 100
      return true
    else
      return false
    end
  end
  return true 
end

p hundred_coolio_array([1, 2, 3, 97, 98, 99]) # ==> true 
p hundred_coolio_array([90, 20, 70, 100, 30, 80, 10]) # ==> true
p hundred_coolio_array([90, 20, 70, 50, 30, 80, 10]) # ==> false