require './lib/stack'

def is_operation? string
  operations = ['+', '-', '/', '*']
  operations.include?(string)
end

class PolishCalc 
  def self.solve input
    stack = Stack.new
    index = input.length-1
    while index >= 0
      char = input[index]
      
      if(is_operation? char)
        first = stack.pop
        second = stack.pop
        result = first.method(char).call(second) 
        stack.push result
      else #operand
        stack.push(char.to_i)
      end
      index -= 1
    end
    stack.pop
  end
end