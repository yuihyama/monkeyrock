# monkeyrock


monkeyrock: Mathematical methods for Ruby.


This repository is under development.


But:


(First of all, clone or download)


```
$ cd monkeyrock
$ cat monkeyrock.rb
#!/usr/bin/env ruby

# monkeyrock examples:

require './lib/add'
require './lib/subt'
require './lib/multiply'
require './lib/divide'
require './lib/factorial'
require './lib/next_num'

puts 1.add(2) # => 3

(1..10).each { |n| puts n.add(1) }
# =>
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11

(1..10).each do |n|
  print 1.add(n), "\n"
end
# =>
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11

(1..10).each { |n| puts n.add(1).add(2) }
# =>
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11
# 12
# 13

(10..20).each { |n| puts n.subt(2) }
# =>
# 8
# 9
# 10
# 11
# 12
# 13
# 14
# 15
# 16
# 17
# 18

[1, 2, 3, 4, 5].each { |n| puts n.multiply(2) }
# =>
# 2
# 4
# 6
# 8
# 10

res1 = []
[1, 2, 3, 4, 5].each { |n| res1 << n.multiply(2) }
print res1, "\n" # => [2, 4, 6, 8, 10]
print res1.multiply(4), "\n" # => [8, 16, 24, 32, 40]

res2 = []
puts [1, 2, 3, 4, 5].each { |n| res2 << n.multiply(2) }.multiply(4)
# =>
# 4
# 8
# 12
# 16
# 20
puts res2
# 2
# 4
# 6
# 8
# 10
print res2.multiply(6.0), "\n" # => [12.0, 24.0, 36.0, 48.0, 60.0]

puts 6.divide(2) # => 3

print [2, 4, 6, 10].divide(2.0), "\n" # => [1.0, 2.0, 3.0, 5.0]

[2, 4, 6, 10].each do |n|
  puts n.divide(2.0).add(2)
end
# =>
# 3.0
# 4.0
# 5.0
# 7.0

[10, 100, 1000].each do |n|
  print n.divide(2).add(2).subt(2).multiply(3.0), "\n"
end
# =>
# 15.0
# 150.0
# 1500.0

ary = [-1, 0, 1, 2, 4, 5, 10, 12]
ary.each { |a| puts a.factorial }
# =>
# 0
# 1
# 1
# 2
# 24
# 120
# 3628800
# 479001600

# More examples?
# See examples directory or test directory :)
```


Run:


```
$ ruby monkeyrock.rb
```


Output:


```
3
2
3
4
5
6
7
8
9
10
11
2
3
4
5
6
7
8
9
10
11
4
5
6
7
8
9
10
11
12
13
8
9
10
11
12
13
14
15
16
17
18
2
4
6
8
10
[2, 4, 6, 8, 10]
[8, 16, 24, 32, 40]
4
8
12
16
20
2
4
6
8
10
[12.0, 24.0, 36.0, 48.0, 60.0]
3
[1.0, 2.0, 3.0, 5.0]
3.0
4.0
5.0
7.0
15.0
150.0
1500.0
0
1
1
2
24
120
3628800
479001600
```


irb:


```
$ cd monkeyrock
$ irb
irb(main):001:0> require './lib/add'
=> true
irb(main):002:0> 1.add(2)
=> 3
irb(main):003:0> (1..10).add(2.0)
=> [3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0]
irb(main):004:0> [*1..10].add(2)
=> [3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
irb(main):005:0> [*1..10].add(2.0)
=> [3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0]
irb(main):006:0> require './lib/factorial'
=> true
irb(main):007:0> 5.factorial
=> 120
irb(main):009:0> [1, 5, 10, 15].each { |n| puts n.factorial }
1
120
3628800
1307674368000
=> [1, 5, 10, 15]
irb(main):010:0> (-1..10).each { |n| puts n.factorial }
0
1
1
2
6
24
120
720
5040
40320
362880
3628800
=> -1..10
irb(main):011:0> [*1..10].map { |n| n.factorial }
=> [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
irb(main):012:0> res = (1..10).map { |n| n.factorial }
=> [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
irb(main):013:0> res
=> [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
irb(main):014:0> [*1..10].map(&:factorial)
=> [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
irb(main):015:0> (1..10).map(&:factorial)
=> [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
```


Enjoy!


## License


MIT License.
