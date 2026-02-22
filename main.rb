require_relative "lib/linked_list"

test = LinkedList.new

test.append(1)
test.prepend(2)
test.append(3)
puts "testing #remove_at"
test.insert_at(1, 25, 14, -1)
puts test.to_s
test.remove_at(4)
puts test.to_s