def flip_array(array)
  array.each_with_index do |inner_array, row|
    array.each_with_index do |elem, col|
      if col > row
        temp_var = array[row][col]
        array[row][col] = array[col][row]
        array[col][row] = temp_var
      end
    end
  end
  array
end

p flip_array([[1, 2, 3], 
              [4, 5, 6],
              [7, 8, 9]]) 





              