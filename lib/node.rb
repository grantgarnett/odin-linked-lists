# This class creates a node object to be used in
# the context of a singly linked list.
class Node 
  attr_reader :value, :next

  def initialize(value = nil, next_node = nil)
    @value = value
    @next = next_node
  end

  def update_pointer(new_node) 
    @next = new_node
  end
end