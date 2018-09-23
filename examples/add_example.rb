#!/usr/bin/env ruby

require './lib/add'

# puts 'a'.add(1) # => NoMethodError
# puts 'a string'.add(1) # => NoMethodError
# puts 1.add('a') # => TypeError

puts 1.add(2) # => 3

puts [1, 2, 3].add(2)
# =>
# 3
# 4
# 5

print [1, 2.0, 3].add(2), "\n" # => [3, 4.0, 5]

(1..10).each { |n| puts n.add(2) }
# =>
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11
# 12

(1..10).each { |n| puts 2.add(n) }
# =>
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11
# 12

(1..10).each { |n| print [1, 2, 3].add(n), "\n" }
# =>
# [2, 3, 4]
# [3, 4, 5]
# [4, 5, 6]
# [5, 6, 7]
# [6, 7, 8]
# [7, 8, 9]
# [8, 9, 10]
# [9, 10, 11]
# [10, 11, 12]
# [11, 12, 13]
