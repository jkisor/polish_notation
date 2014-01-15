class Node
  attr_reader :value
  attr_reader :next_node
  def initialize value, next_node
    @value = value
    @next_node = next_node
  end
end

class Stack
  def push value
    old_head = @head
    @head = Node.new(value, old_head)
  end

  def pop
    return nil if @head.nil?
    value = @head.value
    @head = @head.next_node
    value
  end

  def to_a
    array = []
    
    current = @head
    while !current.nil?
      array.push current.value

      current = current.next_node
    end

    array
  end
end