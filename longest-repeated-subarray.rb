# Write a function, that, given some array, returns
# the length of the longest continuous subarray within
# the array of the same repeated item.
#
# ["A", "B", "D", "D", "B", "B", "B", "A", "R"] => 3
# ["A", "A", "B", "C"] => 2
# ["A", "A", "A", "B", "B"] => 3
# ["A", "A"] => 2

# Write a function that takes an array of chars as an argument
# Set a variable to store the length of the longest repeated item encountered so far, set to zero
# Loop through all the characters in the array
  # set a counter to 1
  # if array at index is equal to array at index plus 1, set counter to 2. 
    # if counter is larger than longest repeated item so far, set longest repeated item so far to current counter
  # if array at index isn't equal to array at index plus 1, restart counter, set it to 1 
# return length of longest repeated item so far

def longest_repeated_subarray(array)
  longest_repeated_length = 0
  index = 0
  counter = 1
  while index < array.length
    if array[index] == array[index + 1]
      counter += 1
      if counter > longest_repeated_length
        longest_repeated_length = counter
      end
    else
      counter = 1
      # if the array only has one char, increment longest_repeated_length to 1
      if longest_repeated_length < 1
        longest_repeated_length = 1
      end
    end
    index += 1
  end
  longest_repeated_length
end

p longest_repeated_subarray(["A", "B", "D", "D", "B", "B", "B", "A", "R"])
p longest_repeated_subarray(["A", "A", "B", "C"])
p longest_repeated_subarray(["A", "A", "A", "B", "B"])
p longest_repeated_subarray(["A", "A"])
p longest_repeated_subarray(["A"])
p longest_repeated_subarray([])
