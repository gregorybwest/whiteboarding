# Given a sorted array arr[] consisting of N distinct integers and an integer K, the task is to find the index of K, if it’s present in the array arr[]. Otherwise, find the index where K must be inserted to keep the array sorted.

# input: array = [1, 3, 5, 6, 8], k = 6
# output: 3 (6 is located at array[3])

# input: array = [1, 3, 5, 6, 8] k = 7
# output: 4

# input: array = [1, 3, 5, 6, 8] k = 100
# output: 5

# loop through each element of the array
  # if current element is equal to k, return that index
  # if current element is greater than k, return that index, because that's where k should be inserted
  # if k is greater than the last element in the sorted array, return the length of the array, because that is the index of end of array +1

def array_insert(array, k)
  i = 0
  while i < array.length
    if array[i] == k 
      return i
    elsif array[i] > k 
      return i
    elsif array.last < k 
      return array.length
    end
    i += 1
  end
end


puts array_insert([1, 3, 5, 6, 8], 7) == 4
puts array_insert([1, 3, 5, 6, 8], 6) == 3
puts array_insert([1, 3, 5, 6, 8], 100) == 5
puts array_insert([1, 3, 5, 6, 8], 0) == 0
puts array_insert([1, 3, 5, 6, 8], -5) == 0

