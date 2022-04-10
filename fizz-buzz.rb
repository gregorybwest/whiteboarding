# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

# Write a function that takes in an integer, "n", as an argument
# Set a variable, counter, to 1. 
# While counter is less than or equal to n
  # If counter % 3 == 0 & counter $ 5 == 0, print FIZZBUZZ
  # elsif counter % 3 == 0, print FIZZ
  # elsif counter %  5 == 0, print BUZZ
  # else print counter 
  # Increment the counter each time through the loop
  
def fizz_buzz(n)
  counter = 1
  while counter <= n
    if counter % 3 == 0 && counter % 5 == 0
      puts "FIZZBUZZ"
    elsif counter % 3 == 0
      puts "FIZZ"
    elsif counter % 5 == 0
      puts "BUZZ"
    else
      puts counter
    end
    counter += 1
  end
end

fizz_buzz(30)