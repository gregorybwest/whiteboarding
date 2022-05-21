# create a function where:
# given a two-dimensional array (where both dimensions are of size N)
# return the transposed array "diagonally".  for example, given:
#
# 1 2      1 3
# 3 4   => 2 4
#
# 1 2 a    1 4 7
# 4 5 6 => 2 5 8
# 7 8 9    a 6 9

# ---  0,1  0,2  0,3
# ---  ---  1,2  1,3
# ---  ---  ---  2,3
# ---  ---  ---  ---

#
# 1 2 3
# 4 5 6 => raise an Exception
#
# null => raise an Exception
#
# [[1]] => [[1]]
#
# [] => []

def transpose_2d_array(array)
  # loop through outer Array
  array.each_with_index do |inner_array, row|
    # loop through each inner Array
    inner_array.each_with_index do |elem, col|
      # decide if we want to swap this one or not
      if col > row
        # save off the thing in first position
        temp_var = array[row][col]
        # set the thing in first position to what's currently in second position
        array[row][col] = array[col][row]
        # set section position to the thing we saved off from first position
        array[col][row] = temp_var
      end
    end
  end
  array
end

p transpose_2d_array([]) == []
p transpose_2d_array([[1]]) == [[1]]
p transpose_2d_array([[1, 2], [3, 4]]) == [[1, 3], [2, 4]]
p transpose_2d_array([[1, 2, "a"], [4, 5, 6], [7, 8, 9]]) == [[1, 4, 7], [2, 5, 8], ["a", 6, 9]]
