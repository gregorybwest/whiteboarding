# ">" is a car going right, "<" is a car going left. "." is a camera. count how many cameras are passed in total by all the cars in the string. 

# input: "..>.."
# output: 2

# input: ".>..."
# output: 3

# input: "..<..."
# output: 2

def count_cameras(s)
  camera_count = 0
  s.split("").each_with_index do |char, index|
    if char == "<"
      while index >= 0
        if s[index] == "."
          camera_count += 1
        end
        index -= 1
      end
    end
    if char == ">"
      while index <= s.length - 1
        if s[index] == "."
          camera_count += 1
        end
        index += 1
      end
    end

  end
  return camera_count
end

puts count_cameras("....>..<..") == 10 
