require 'minitest/autorun'
require './lib/add'

class AddTest < Minitest::Test
  def test_add
    assert_equal 3, 1.add(2)
    assert_equal 0, 0.add(0)
    assert_equal 1, 0.add(1)
    assert_equal 1, 1.add(0)
    assert_equal(-1, 0.add(-1))
    assert_equal(-1, -1.add(0))
    assert_equal(-2.0, -1.add(-1.0))
    assert_equal(-2.0, (-1.0).add(-1))
    assert_equal(-2.0, -1.0.add(-1))
    assert_equal(-2.0, (-1.0).add(-1.0))
    assert_equal(-2.0, -1.0.add(-1.0))
    assert_equal 2.2, (1.1).add(1.1)
    assert_equal 2.2, 1.1.add(1.1)
    # Expected, Actual, (5/3)
    assert_equal Rational(5, 3), Rational(2, 3).add(1)
    assert_equal [3, 4, 5], [1, 2, 3].add(2)
    assert_equal [3, 4.0, 5], [1, 2.0, 3].add(2)
    assert_equal [0, 1, 2], [1, 2, 3].add(-1)
    assert_equal [2, 3, 4, 5, 6], (1..5).add(1)

    assert_raises(NoMethodError) { 'a'.add(1) }
    assert_raises(NoMethodError) { 'a string'.add(1) }
    assert_raises(TypeError) { 1.add('a') }

    assert_output("3\n") { p 1.add(2) }
    assert_output("-2\n") { p (-1.add(-1)) }
    assert_output("-2.0\n") { p (-1.add(-1.0)) }
    assert_output("-2.0\n") { p (-1.0.add(-1.0)) }
    assert_output("[3, 4, 5]\n") { p [1, 2, 3].add(2) }
    assert_output("3.0\n4.0\n5.0\n") { puts [1, 2, 3].add(2.0) }
    assert_output("[3, 4.0, 5]\n") { print [1, 2.0, 3].add(2), "\n" }
  end
end
