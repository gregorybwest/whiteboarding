# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


# Simpler problem: find all the pairs of numbers under 100 whose product is a palindromic number, and return the pairs of numbers and their product
  # Write a function that doesn't take any arugments
  # Calculate the product of every pair of numbers between 1 and 99 
   # Loop through 1-99, and for each number, multiply it by numbers 1-99
    # If the product, converted to a string, then reversed, is equal to the product, store each number as a pair in an array, and print that array. Also store the products in an array, and print that array.
    
def pallindrome_multipliers
  largest_pallindrome_so_far = 0 
  index = 1
  while index < 1000
    index2 = 1
    while index2 < 1000
      if (index * index2).to_s == (index * index2).to_s.reverse
        if index * index2 > largest_pallindrome_so_far
          largest_pallindrome_so_far = index * index2
        end
      end
      index2 += 1
    end
    index += 1
  end
  largest_pallindrome_so_far
end

p pallindrome_multipliers