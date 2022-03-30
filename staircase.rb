# def staircase(height)
#   i = 1
#   while i <= height
#     puts "#" * i 
#     i += 1
#   end
# end

# staircase(5)

# n = height
def staircase(n)
  spaces = n - 1
  blocks = 1
  while spaces >= 0 && blocks <= n
    print " " * spaces
    puts "#" * blocks
    blocks += 1
    spaces -= 1
  end
end

staircase(5)