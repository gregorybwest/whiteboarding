# select method 

array = [18, 22, 33, 3, 5, 6]
p array.select {|num| num >= 6 }
p array.select {|num| num.odd? }