# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

# write a function that takes in two array as arugments
# set an empty hash
# loop through array 2 and set the values to the hash
# loop through the first array and check if each value is contained in the hash
# if we get to the end of the first array and each value in the hash contains at least two elements, we retrun true, otherwise return false

# first attempt, doesn't account for which array is larger

def array_subset(array1, array2)
  hash = {}
  array2.each do |num|
    if hash[num] 
      hash[num] += 1
    else
      hash[num] = 1
    end
  end
  array1.each do |num|
    if hash[num] 
      hash[num] -= 1
    end
  end
  p hash.values
  hash.values.each do |value| 
    if value > 0
      return false
    end
  end
  return true
end

p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 6])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3])




def array_subset(array1, array2)
  hash = {}
  if array1.length < array2.length
    smaller_array = array1
    larger_array = array2
  else
    smaller_array = array2
    larger_array = array1
  end
  smaller_array.each do |num|
    if hash[num]
      hash[num] += 1
    else
      hash[num] = 1
    end
  end
  larger_array.each do |num|
    if hash[num]
      hash[num] -= 1
    end
  end
  hash.values.each do |value|
    if value > 0
      return false
    end
  end
  return true
end

p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 6])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3])
p array_subset([6, 3], [1, 2, 3, 4, 5, 6])
