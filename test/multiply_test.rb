require 'minitest/autorun'
require './lib/multiply'

class Multiply < Minitest::Test
  def test_multiply
    assert_equal 6, 2.multiply(3)
    assert_equal 0, 0.multiply(0)
    assert_equal 0, 0.multiply(1)
    assert_equal 0, 1.multiply(0)
    assert_equal 0, 0.multiply(-1)
    assert_equal 0, -1.multiply(0)
    assert_equal 1.0, -1.multiply(-1.0)
    assert_equal 1.0, (-1.0).multiply(-1)
    assert_equal 1.0, -1.0.multiply(-1)
    assert_equal 1.0, (-1.0).multiply(-1.0)
    assert_equal 1.0, -1.0.multiply(-1.0)
    # Expected, Actual, (4/3)
    assert_equal Rational(4, 3), Rational(2, 3).multiply(2)
    assert_equal [2, 4, 6], [1, 2, 3].multiply(2)
    assert_equal [2, 4.0, 6], [1, 2.0, 3].multiply(2)
    assert_equal [-1.0, -2.0, -3.0], [1, 2, 3].multiply(-1.0)
    assert_equal [3, 6, 9, 12, 15], (1..5).multiply(3)

    assert_in_delta 1.21, (1.1).multiply(1.1)

    assert_raises(NoMethodError) { 'a'.multiply(1) }
    assert_raises(NoMethodError) { 'a string'.multiply(1) }
    assert_raises(TypeError) { 1.multiply('a') }

    assert_output("6\n") { p 2.multiply(3) }
    assert_output("1\n") { p (-1.multiply(-1)) }
    assert_output("1.0\n") { p (-1.multiply(-1.0)) }
    assert_output("1.0\n") { p (-1.0.multiply(-1.0)) }
    assert_output("(4/3)\n") { p Rational(2, 3).multiply(2) }
    assert_output("[2, 4, 6]\n") { p [1, 2, 3].multiply(2) }
    assert_output("[3, 6, 9, 12, 15]\n") { p (1..5).multiply(3) }
    assert_output("2.0\n4.0\n6.0\n") { puts [1, 2, 3].multiply(2.0) }
    assert_output("[3, 6.0, 9]\n") { print [1, 2.0, 3].multiply(3), "\n" }
  end
end
