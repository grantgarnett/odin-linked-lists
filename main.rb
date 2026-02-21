require_relative "lib/linked_list"

test = LinkedList.new

puts test.head
puts test.tail
test.append(1)
test.prepend(2)
test.append(3)
puts "testing index:"
puts test.at(1)
puts test.at(2)
puts test.at(3)