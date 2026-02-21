require_relative "node"

class LinkedList 
  attr_reader :head, :tail
  
  def initialize 
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = @tail = new_node
    else
      @tail.update_pointer(new_node)
      @tail = new_node
    end
  end
end