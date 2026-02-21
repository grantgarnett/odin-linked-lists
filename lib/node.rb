# This class creates a node object to be used in
# the context of a singly linked list.
class Node 
  attr_reader :value, :next_node 

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def change_pointer(new_node) 
    @next_node = new_node
  end
end