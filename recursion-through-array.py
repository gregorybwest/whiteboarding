array = [1, 2, 3, [4, 5, 6], 7, [8, [9, 10, 11, [12, 13, 14]]],
         [15, 16, 17, 18, 19, [20, 21, 22]]]


def recursion_through_array(array):
    for element in array:
        if isinstance(element, int):
            print(element)
        else:
            recursion_through_array(element)


recursion_through_array(array)
