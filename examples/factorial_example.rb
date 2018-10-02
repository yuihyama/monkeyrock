#!/usr/bin/env ruby

require './lib/factorial'

# NoMethodError(s):
#
# puts 'a'.factorial
# puts 'a string'.factorial
# puts 6.6.factorial
# puts Rational(2, 3).factorial
# puts Complex(2, 3).factorial
# puts [2, 3].factorial
# puts (1..5).factorial

# puts -1.factorial # => 0
# puts 0.factorial # => 1

puts 5.factorial # => 120

(1..10).each { |n| puts n.factorial }
# =>
# 1
# 2
# 6
# 24
# 120
# 720
# 5040
# 40320
# 362880
# 3628800

res = []
(1..10).each { |n| res << n.factorial }
puts res
# =>
# 1
# 2
# 6
# 24
# 120
# 720
# 5040
# 40320
# 362880
# 3628800

print res, "\n"
# => [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]

[2, 5, 10, 15, 20].each { |a| puts a.factorial }
# =>
# 2
# 120
# 3628800
# 1307674368000
# 2432902008176640000
