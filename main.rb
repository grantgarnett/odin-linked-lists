require_relative "lib/linked_list"

test = LinkedList.new

puts test.head
puts test.tail
test.append(1)
test.prepend(2)
test.append(3)
puts test.head
puts test.tail
puts test.head.value
puts test.tail.value
puts test.size