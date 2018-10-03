require 'minitest/autorun'

# require './lib/*.rb':
#
Dir[File.expand_path('../../../lib', __FILE__) << '/*.rb'].each do |file|
  require file
end

class AllTest < Minitest::Test
  def test_all
    # assert_equal:
    assert_equal 0, 1.add(2).subt(3)
    assert_equal [1, 2, 3], [1, 2, 3].add(4).subt(4)
    assert_equal [4, 6, 8, 10, 12], (1..5).add(1).multiply(2)
    assert_equal [2, 3], [1, 2].map { |n| n.add(1) }
    assert_equal [3, 4], [1, 2].map { |n| n.add(1) }.add(1)
    assert_equal [6, 8.0], [1, 2.0].map { |n| 1.add(n) }.add(1).multiply(2)
    assert_equal 120, 1.add(4).factorial

    # assert_output: p:
    assert_output("0\n") { p 1.add(2).subt(3) }
    assert_output("[1, 2, 3]\n") { p [1, 2, 3].add(4).subt(4) }
    assert_output("[4, 6, 8, 10, 12]\n") { p (1..5).add(1).multiply(2) }
    assert_output("[2, 3]\n") { p [1, 2].map { |n| n.add(1) } }
    assert_output("[3, 4]\n") { p [1, 2].map { |n| n.add(1) }.add(1) }
    assert_output("[6, 8.0]\n") { p [1, 2.0].map { |n| 1.add(n) }.add(1).multiply(2) }
    assert_output("120\n") { p 1.add(4).factorial }

    # assert_output: puts:
    assert_output("0\n") { puts 1.add(2).subt(3) }
    assert_output("1\n2\n3\n") { puts [1, 2, 3].add(4).subt(4) }
    assert_output("4\n6\n8\n10\n12\n") { puts (1..5).add(1).multiply(2) }
    assert_output("2\n3\n") { puts [1, 2].map { |n| n.add(1) } }
    assert_output("3\n4\n") { puts [1, 2].map { |n| n.add(1) }.add(1) }
    assert_output("6\n8.0\n") { puts [1, 2.0].map { |n|
      1.add(n)
    }.add(1).multiply(2) }
    assert_output("120\n") { puts 1.add(4).factorial }

    # assert_output: print:
    assert_output("[1, 2, 3]\n") { print [1, 2, 3].add(4).subt(4), "\n" }
    assert_output("[4, 6, 8, 10, 12]\n") { print (1..5).add(1).multiply(2), "\n" }
    assert_output("[2, 3]\n") { print [1, 2].map { |n| n.add(1) }, "\n" }
    assert_output("[3, 4]\n") { print [1, 2].map { |n| n.add(1) }.add(1), "\n" }
    assert_output("[6, 8.0]\n") { print [1, 2.0].map { |n|
      1.add(n)
    }.add(1).multiply(2), "\n" }
  end
end
