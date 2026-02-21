require_relative "lib/linked_list"

test = LinkedList.new

puts test.head
puts test.tail
test.append(1)
test.prepend(2)
test.append(3)
puts "testing contains?"
puts test.contains?(1)
puts test.contains?(3)
puts test.contains?(4)
puts test.contains?(nil)