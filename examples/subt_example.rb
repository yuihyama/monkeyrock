#!/usr/bin/env ruby

# subtract:
require './lib/subt'

# puts 'a'.subt(1) # => NoMethodError
# puts 'a string'.subt(1) # => NoMethodError
# puts 1.subt('a') # => TypeError

puts 2.subt(1) # => 1

puts Rational(2, 3).subt(1) # => -1/3

puts [1, 2, 3].subt(1)
# =>
# 0
# 1
# 2

print [1, 2.0, 3].subt(2), "\n" # => [-1, 0.0, 1]

(1..10).each { |n| puts n.subt(2) }
# =>
# -1
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8

(1..10).each { |n| puts 2.subt(n) }
# =>
# 1
# 0
# -1
# -2
# -3
# -4
# -5
# -6
# -7
# -8

(1..10).each { |n| print [1, 2, 3].subt(n), "\n" }
# =>
# [0, 1, 2]
# [-1, 0, 1]
# [-2, -1, 0]
# [-3, -2, -1]
# [-4, -3, -2]
# [-5, -4, -3]
# [-6, -5, -4]
# [-7, -6, -5]
# [-8, -7, -6]
# [-9, -8, -7]

(-5..5).each { |n| print [1, 2, 3].subt(n), "\n" }
# =>
# [6, 7, 8]
# [5, 6, 7]
# [4, 5, 6]
# [3, 4, 5]
# [2, 3, 4]
# [1, 2, 3]
# [0, 1, 2]
# [-1, 0, 1]
# [-2, -1, 0]
# [-3, -2, -1]
# [-4, -3, -2]

print (1..5).subt(1), "\n" # => [0, 1, 2, 3, 4]
