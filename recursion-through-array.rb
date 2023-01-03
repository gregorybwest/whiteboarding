array = [1, 2, 3, [4, 5, 6], 7, [8, [9, 10, 11, [12, 13, 14]]], [15, 16, 17, 18, 19, [20, 21, 22]]]

def print_numbers(array)
  array.each do |element|
    if element.class == Integer
      puts element
    else
      print_numbers(element)
    end
  end
end

print_numbers(array)