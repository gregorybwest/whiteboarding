puts (1..10).each_slice(3) { |a| p a }




def my_each_slice(array)
  new_array = []
  index = 0
  while index < array.length
    if (index + 1) % 3 == 0
      new_array << array[index - 2]  
      new_array << array[index - 1]
      new_array << array[index]
    end
    index += 1
  end
  new_array
end

p my_each_slice([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
