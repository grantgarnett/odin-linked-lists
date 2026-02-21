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

  def prepend(value) 
    new_node = Node.new(value)

    if @head.nil? 
      @head = @tail = new_node
    else
      new_node.update_pointer(@head)
      @head = new_node 
    end
  end

  def size
    return 0 if @head == nil 

    current_node = @head 
    count = 1

    until current_node.next.nil?
      count += 1
      current_node = current_node.next
    end

    count
  end
end