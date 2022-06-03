# Write a function that takes in an array of numbers and returns the 3rd largest number.

def third_largest(array)
  top_three = []
  3.times do
    top_three << array.max
    array.delete(array.max)
  end
  top_three.min
end

p third_largest([1, 2, 3, 4, 5, 6, 7]) == 5
p third_largest([100, 8, 500, -12, 1000]) == 100