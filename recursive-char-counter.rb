# write a function that accepts an array of strings and returns the total number of characters across all strings

# ["ab", "c", "def" "ghik"] returns 10 

def char_counter(array)
  return 0 if array.length == 0
  return array[0].length + char_counter(array[1, array.length - 1])
end

p char_counter(["ab", "c", "def", "ghik"])