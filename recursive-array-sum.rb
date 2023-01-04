def sum(array)
  return array[0] if array.length == 1
  return array[0] + sum(array[1..array.length - 1])
end

puts sum([1, 2, 3, 4, 5])