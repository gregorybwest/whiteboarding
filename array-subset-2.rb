# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

# check which of the two arrays is smaller
# from the smaller array, add each unique number to a hash, with the number as the key and number of times it occurs in the array as its value
# loop through the larger array
  # if number is contained in the hash, decrement the value of the key by 1. 
# if any value in the hash is greater than 0, output false. 
# if not value in the hash is greater than 0, return true. 

def array_subset(array1, array2)
  if array1.length < array2.length
    smaller_array = array1
    larger_array = array2
  else
    smaller_array = array2
    larger_array = array1
  end
  
  smaller_array_hash = {}
  smaller_array.each do |num|
    if smaller_array_hash[num]
      smaller_array_hash[num] += 1
    else
      smaller_array_hash[num] = 1
    end
  end

  larger_array.each do |num|
    smaller_array_hash.keys.each do |key|
      if num == key
        smaller_array_hash[num] -= 1
      end
    end
  end

  smaller_array_hash.values.each do |value|
    if value > 0
      return false
    end
  end

  return true

end


p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 2]) == true
p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7]) == false
p array_subset([1, 2, 3, 4, 5, 6, 6, 6], [6, 3, 6]) == true
p array_subset([1, 2, 3, 4, 5, 6, "hello"], [6, 3, 2, "hello"]) == true
p array_subset([6, 3, 2], [1, 2, 3, 4, 5, 6]) == true

