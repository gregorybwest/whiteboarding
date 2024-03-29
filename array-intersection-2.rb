# Given two arrays, return a new array that contains the intersection of the two arrays. The intersection means the values that are contained in both of the arrays. Do not use the "&", or any built-in intersection methods.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5], [1, 3, 5, 7, 9]
# Output: [1, 3, 5]

def array_intersection(array1, array2)
  array_hash = {}
  intersections = []
  array1.each do |num|
    array_hash[num] = true
  end
  array2.each do |num|
    if array_hash[num]
      intersections << num
    end 
  end
  intersections
end

p array_intersection([1, 2, 3, 4, 5], [1, 3, 5, 7, 9])