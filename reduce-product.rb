# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# Input: [1, 0, 3, 4]
# Output: 0

# Input: [-1, 2, 3, 4]
# Output: -24

# Write a function that accepts an array of integers as an argument
# Set a variable that will contain the product of the numbers in the array to the first number in the array
# Loop through the array starting at array[1], muliplying each element by the variable
  # increment index as long as it's less than the length of the array
# Return the variable storing the product of all the numbers in the array

def reduce_product(array)
  product_so_far = array[0]
  index = 1
  while index < array.length
    product_so_far *= array[index]
    index += 1
  end
  product_so_far
end

p reduce_product([1, 2, 3, 4])

