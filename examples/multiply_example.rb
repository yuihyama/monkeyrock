#!/usr/bin/env ruby

require './lib/multiply'

# puts 'a'.multiply(1) # => NoMethodError
# puts 'a string'.multiply(1) # => NoMethodError
# puts 1.multiply('a') # => TypeError

puts 2.multiply(3) # => 6

puts Rational(2, 3).multiply(2) # => 4/3

puts [1, 2, 3].multiply(2)
# =>
# 2
# 4
# 6

print [1, 2.0, 3].multiply(2), "\n" # => [3, 4.0, 6]

(1..10).each { |n| puts n.multiply(2) }
# =>
# 2
# 4
# 6
# 8
# 10
# 12
# 14
# 16
# 18
# 20

(1..10).each { |n| puts 2.multiply(n) }
# =>
# 2
# 4
# 6
# 8
# 10
# 12
# 14
# 16
# 18
# 20

(1..10).each { |n| print [1, 2, 3].multiply(n), "\n" }
# =>
# [1, 2, 3]
# [2, 4, 6]
# [3, 6, 9]
# [4, 8, 12]
# [5, 10, 15]
# [6, 12, 18]
# [7, 14, 21]
# [8, 16, 24]
# [9, 18, 27]
# [10, 20, 30]

puts (1..10).multiply(3)
# =>
# 3
# 6
# 9
# 12
# 15
# 18
# 21
# 24
# 27
# 30

print (1..10).multiply(3.0), "\n"
# => [3.0, 6.0, 9.0, 12.0, 15.0, 18.0, 21.0, 24.0, 27.0, 30.0]
