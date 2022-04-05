# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...
# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)
# Input: 11
# Output: 55


# def fibonacci(n)
#   first_num = 0
#   second_num = 1
#   (n - 1).times do
#     first_num, second_num = second_num, first_num + second_num
#   end
#   first_num
# end
# p fibonacci(100)

def fibonacci(n)
  arr = [0, 1]
  (n - 1).times do
    arr[0], arr[1] = arr[1], arr[0] + arr[1]
  end
  arr[0]
end
p fibonacci(7)

# def fibonacci(nth_number)
#   arr = [0, 1]
#   while arr.length < nth_number
#     arr << arr[-1] + arr[-2]
#   end
#   arr[-1]
# end

# p fibonacci(9)