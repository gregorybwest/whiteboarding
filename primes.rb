
# Write a function that returns whether a given number is a prime number.
# A prime is a number that is only evenly divisible by one, and itself

# Input: 5
# Output: "Prime"

# Input: 6
# Output: "Not a prime"

# Write a function that takes in a number as its argument
# If the number is even and greater than 2, it is not prime
# Check if number divided by all the numbers less than itself and greater than one have a remainder that is equal to zero, and if so, return "not prime"


def is_prime(num)
  index = num / 2
  while index < (num - 2)
    if num % (num - index) == 0
      return "Not Prime"
    end
    index += 1
  end
  return "Prime"
end

start_time = Time.now
p is_prime(1450019)
p Time.now - start_time


require 'prime'

def is_prime_colleen(number)
  Prime.prime?(number)
end

start_time = Time.now
p is_prime_colleen(9200393379739)
p Time.now - start_time