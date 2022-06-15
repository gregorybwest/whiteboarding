require 'prime'

# input: 10001
# output: 104743

# set a counter to 0, which will count all the prime numbers
# set current number to 2
# check every number until counter equals the input 
  # increment current number by 1
    # if the number is prime, increase the counter by 1

def nth_prime(number)
  counter = 0
  current_number = 2
  while true
    if current_number.prime?
      counter += 1
      if counter == number
        return current_number
      end
    end
    current_number += 1
  end
end

p nth_prime(10001) == 104743
p nth_prime(2) == 3
p nth_prime(6) == 13