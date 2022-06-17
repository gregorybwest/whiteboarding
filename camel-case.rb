# this function takes in a string, s, and returns the number of words contained in the string, given that the string is written in camelcase. 

def camel_case(s)
  counter = 0
  s.each_char do |letter|
    if letter == letter.upcase
      counter += 1
    end
  end
  counter + 1
end

p camel_case("helloThere") == 2
p camel_case("thisIsAMethodName") == 5