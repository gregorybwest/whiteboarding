# Given two arrays, return a new array that contains the intersection of the two arrays. The intersection means the values that are contained in both of the arrays. Do not use the "&", or any built-in intersection methods.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5], [1, 3, 5, 7, 9]
# Output: [1, 3, 5]

# create empty hash that will store letters
# create an empty array that will store the intersections
# loop through the first array
  # for each value, make the value a key with the value of zero. 
# loop through the second array
  # if the value is a key in the hash, add it to the intersection array
# return the intersection array

def intersections(array1, array2)
  element_hash = {}
  intersections = []
  array1.each do |element|
    element_hash[element] = 0
  end
  array2.each do |element|
    if element_hash[element]
      intersections << element
    end
  end
  intersections
end

p intersections([1, 2, 3, 4, 5], [1, 3, 5, 7, 9])