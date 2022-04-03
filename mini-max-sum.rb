def mini_max_sum(arr)
  sorted_array = arr.sort
  smaller_sum = sorted_array.reduce(:+) - sorted_array.last
  larger_sum = sorted_array.reduce(:+) - sorted_array.first
  puts smaller_sum.to_s + " " + larger_sum.to_s
end

mini_max_sum([5, 2, 3, 4, 1])
mini_max_sum([9, 7, 5, 3, 1])