# write a function that accepts and array of numbers and returns only the even numbers

def even_numbers(array)
  return [] if array.length == 0
  if array[0].even? 
    return [array[0]] + even_numbers(array[1, array.length - 1])
  else
    return even_numbers(array[1, array.length - 1])
  end
end

p even_numbers([1, 2, 3, 4, 5, 6])