# given an array of numbers, write a recursive function that takes in the array as an argument and returns the sum of the numbers in the given array
# return array[0] + sum(array[1, array.length - 1])
# base case is when there's only one number left in the array

def sum(array)
  return array[0] if array.length == 1
  return array[0] + sum(array[1, array.length - 1])
end

puts sum([1, 2, 3, 4, 5])