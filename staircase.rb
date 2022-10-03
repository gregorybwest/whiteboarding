def staircase(height)
  # first row has (height - 1) spaces
  spaces = height - 1
  # first row has 1 block
  left_blocks = 1
  right_blocks = 1
  while height > 0
    print " " * spaces
    print "#" * left_blocks
    print " "
    puts "#" * right_blocks
    left_blocks += 1
    spaces -= 1
    right_blocks += 1
    height -= 1
  end
end

staircase(80)