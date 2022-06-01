# select method 

array = [18, 22, 33, 3, 5, 6]
p array.select {|num| num >= 6 }
p array.select {|num| num.odd? }

# shift method

array = [18, 22, 33, 3, 5, 6]
p array
p array.shift # ==> returns 18
p array # ==> [22, 33, 3, 5, 6]