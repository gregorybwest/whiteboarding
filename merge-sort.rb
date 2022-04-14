# Given two sorted arrays, merge the second array into the first array while ensuring the first array remains sorted. 

# Input :
# A : [1, 5, 8]
# B : [6, 9]

# Modified A : [1, 5, 6, 8, 9]

# Write a function that takes in two sorted arrays of numbers as arguments
# Loop through the arrays, starting at array[0] of each array, and shovel the smaller number into a new sorted array. 
  # If the number was the smaller of the two, increment the index and look at the next element in that array for the next comparison, comparing it to the element from the previous comparison that was larger. 
  # Repeat this process until we reach the end of the larger of the two arrays
# Return the new array

def merge_sort(nums1, nums2)
  if nums1.length > nums2.length
    longest_array = nums1.length
  else
    longest_array = nums2.length
  end
  merged_array = []
  index1 = 0
  index2 = 0
  while index1 < longest_array || index2 < longest_array
    if nums2[index2] == nums2.last 
      merged_array << nums2[index2]
      merged_array
      break
    end
    if nums1[index1] < nums2[index2]
      merged_array << nums1[index1]
      index1 += 1
      puts "index one is #{index1}" 
      p merged_array
    else
      merged_array << nums2[index2]
      index2 += 1
      puts "index two is #{index2}" 
      p merged_array
    end
  end
  merged_array
end

p merge_sort([1, 5, 8], [6, 9])