require_relative "node"

class LinkedList 
  attr_reader :head

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
    return 0 if @head.nil?

    current_node = @head 
    count = 1

    until current_node.next.nil?
      count += 1
      current_node = current_node.next
    end

    count
  end

  def head 
    return nil if @head.nil?
    @head.value
  end

  def tail 
    return nil if @tail.nil?
    @tail.value
  end

  def at(index)
    current_node = @head 
    index_at = 0

    until current_node.nil?
      return current_node.value if index_at == index
      index_at += 1
      current_node = current_node.next
    end

    nil
  end

  def pop
    return nil if @head.nil? 

    removed_val = @head 
    @head = @head.next 
    removed_val
  end

  def contains?(value)
    current_node = @head 

    until current_node.nil?
      return true if current_node.value == value
      current_node = current_node.next
    end

    false
  end

  def index(value) 
    current_node = @head 
    index_at = 0

    until current_node.nil?
      return index_at if current_node.value == value
      index_at += 1
      current_node = current_node.next
    end

    nil
  end

  def to_s 
    return "" if @head.nil?

    current_node = @head
    string_of_vals = ""

    until current_node.nil? 
      string_of_vals << "(#{current_node.value}) -> "
      current_node = current_node.next
    end
    string_of_vals << "nil"

    string_of_vals
  end

  def insert_at(index, *values)
    raise IndexError if (index < 0 || index > self.size)

    iterating_node = self.object_at(index - 1)
    after = self.object_at(index)

    values.each do |value|
      new_node = Node.new(value)
      iterating_node.update_pointer(new_node)
      iterating_node = new_node
    end

    iterating_node.update_pointer(after)
  end

  def object_at(index) 
    current_node = @head 
    index_at = 0

    until current_node.nil?
      return current_node if index_at == index
      index_at += 1
      current_node = current_node.next
    end

    nil
  end
end