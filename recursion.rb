# def countdown(num)
#   while num >= 0 
#     puts num
#     num -= 1
#   end
# end

# countdown(10)

# def sum(low, high)
#   if low > high
#     return low
#   end
#   return high + sum(low, high - 1)
# end

# p sum(0, 10)

array = [1, 2, 3, [4, 5, 6], 7, [8, [9, 10, 11, [12, 13, 14]]], [15, 16, 17, 18, 19, [20, 21, 22]]]

def print_numbers_only(array)
  array.each do |element|
    if element.is_a? Integer
      puts element
    else
      print_numbers_only(element)
    end
  end
end

print_numbers_only(array)