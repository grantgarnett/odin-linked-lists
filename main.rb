require_relative "lib/linked_list"

test = LinkedList.new

puts test.head
puts test.tail
test.append(1)
test.prepend(2)
puts test.head
puts test.tail
puts test.head.value
puts test.tail.value