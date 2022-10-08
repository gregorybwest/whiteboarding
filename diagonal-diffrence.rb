# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# For example, the square matrix  is shown below:

# input: 

# 1 2 3
# 4 5 6
# 9 8 9  

# output: 2 (the absolute value of 15 - 17)

# set an empty arr 'first diagonal'
# set an empty array 'second diagonal'
# loop through the outer arrays
  # loop through inner array
    # if the index of outer matches index of inner array, add the value to first diagonal array
# switch rows and columns of matrix with .transpose
# loop through outer arrays, reversing the order of the elements of each
# repeat process to get diagonals, adding their values to second diagonal array
# if first diagonal is larger than second diagonal, return value of first - second
  # else, return value of second minus first. 

# def diagonal_difference(arr)
#   first_diagonal = []
#   second_diagonal = []
#   i = 0
#   while i < arr.length
#     j = 0
#     while j < arr.length
#       if i == j
#         first_diagonal << arr[i][j]
#       end
#       j += 1
#     end
#     i += 1
#   end
#   rotated_arr = arr.transpose.map(&:reverse)
#   i = 0
#   while i < rotated_arr.length
#     j = 0
#     while j < rotated_arr.length
#       if i == j
#         second_diagonal << rotated_arr[i][j]
#       end
#       j += 1
#     end
#     i += 1
#   end
#   (first_diagonal.sum - second_diagonal.sum).abs
# end

require 'matrix'

def trace(arr)
  Matrix[*arr].trace
end

def rotate90(arr)
  arr.transpose.map(&:reverse)
end

def diagonal_difference(arr)
  array90 = rotate90(arr)
  (trace(arr) - trace(array90)).abs
end

p diagonal_difference([[1, 2, 3], [4, 5, 6], [9, 8, 9]]) == 2