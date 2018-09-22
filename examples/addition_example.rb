#!/usr/bin/env ruby

require './lib/addition'

# puts 'a'.addition(1) # => NoMethodError
# puts 'a string'.addition(1) # => NoMethodError
# puts 1.addition('a') # => TypeError

puts 1.addition(2) # => 3

puts [1, 2, 3].addition(2)
# =>
# 3
# 4
# 5

print [1, 2.0, 3].addition(2), "\n" # => [3, 4.0, 5]

(1..10).each { |n| puts n.addition(2) }
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

(1..10).each { |n| puts 2.addition(n) }
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

(1..10).each { |n| print [1, 2, 3].addition(n), "\n" }
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
