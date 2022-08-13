class Stack
  def initialize
    @data = []
  end
  
  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

def reverse(string)
  stack = Stack.new
  string.each_char do |letter|
    stack.push(letter)
  end
  reversed_string = ""
  while stack.read
    reversed_string += stack.pop
  end
  return reversed_string
end

p reverse("hello")
