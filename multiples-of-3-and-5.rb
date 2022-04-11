# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Input: 10
# Output: 23 (3 + 5 + 6 + 9)

# Input: 20
# Output: 68

# Input: 21
# Output: 89

# Input: 2
# Output: 0

# Write a function that takes in a number as an arugment, "number"
# Create an empty array that will store all the numbers between 1 and number. 
# Counting from 1, put every number into an array up until number. 
# Select all the numbers from the array that when divided by 3 or 5 have a remainder of zero, and store them in a new array of only the multiples of 3 and 5
# Reduce that array to the sum of its elements, and return that sum

def sum_of_3_5_multiples(number)
  array = []
  index = 1
  while index < number
    array << index
    index += 1
  end
  array_of_3_5_multiples = array.select { |num| num % 3 == 0 || num % 5 == 0 }
  array_of_3_5_multiples.reduce(:+)
end

p sum_of_3_5_multiples(1000)