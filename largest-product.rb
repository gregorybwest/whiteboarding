# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

# Write a function that takes an array of integers as an argument
# Look at each element in the array, and multiply it by every other number in the array (not itself)
  # If the product of the current two elements is the largest product so far, store that product as the new largest product

def largest_product(nums_array)
  largest_product_so_far = 0
  index = 0 
  while index < nums_array.length
    index2 = 0
    while index2 < nums_array.length
      if index != index2
        if nums_array[index] * nums_array[index2] > largest_product_so_far
          largest_product_so_far = nums_array[index] * nums_array[index2]
        end
      end
      index2 += 1
    end
    index += 1
  end
  largest_product_so_far
end

p largest_product([5, -2, 1, -9, -7, 2, 6]) # ==> 63