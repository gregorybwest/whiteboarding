# The Collatz Conjecture or 3x+1 problem can be summarized as follows:

# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

# Given a number n, return the number of steps required to reach 1.

# Examples
# Starting with n = 12, the steps would be as follows:

# 12, 6, 3, 10, 5, 16, 8, 4, 2, 1

# Resulting in 9 steps. So for input n = 12, the return value would be 9.

# Input: 12
# Output: 9

# Input: 5
# Output: 5

# Input: 7
# Input: 16

# Write a function that takes in a positive integer, n, as an argument
# If n is even, divide n by 2. 
# If n is odd, multiply n by 3 and add 1
  # Continue this process until n is 1
  # Count each time a division or multiplication process runs, and return that count

def collazt(n)
  counter = 0
  while n != 1
    if n.even?
      n = n / 2
    elsif n.odd?
      n = n * 3 + 1
    end
    counter += 1
  end
  counter
end

p collazt(12) # ==> 9
p collazt(5) # ==> 5
p collazt(7) # ==> 16 
