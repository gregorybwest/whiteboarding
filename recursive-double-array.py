# use recursion to double all the elements in in array.

def double_array(array, index=0):
    if index >= len(array):
        return
    array[index] *= 2
    double_array(array, index + 1)


array = [1, 2, 3, 4, 5]
double_array(array)
print(array)
