require_relative "lib/linked_list"

test = LinkedList.new

test.append(1)
test.prepend(2)
test.append(3)
puts "testing #index"
puts test.index(1)
puts test.index(2)
puts test.index(3)
puts test.index(4)