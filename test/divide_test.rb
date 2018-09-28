require 'minitest/autorun'
require './lib/divide'

class DivideTest < Minitest::Test
  def test_divide
    assert_equal 3, 6.divide(2)
    assert_equal 0, 0.divide(1)
    assert_equal 0, 0.divide(-1)
    assert_equal(-1, 1.divide(-1))
    assert_equal 1, -1.divide(-1.0)
    assert_equal 1.0, (-1.0).divide(-1)
    assert_equal 1.0, -1.0.divide(-1)
    assert_equal 1.0, (-1.0).divide(-1.0)
    assert_equal 1.0, -1.0.divide(-1.0)
    assert_equal 1, (1.1).divide(1.1)
    assert_equal 1, 1.1.divide(1.1)
    assert_equal 2.0, 6.6.divide(3.3)
    assert_equal 2.0, (6.6).divide(3.3)
    # Expected, Actual, (1/3)
    assert_equal Rational(1, 3), Rational(2, 3).divide(2)
    assert_equal [0, 1, 1], [1, 2, 3].divide(2)
    assert_equal [0.5, 1.0, 1.5], [1.0, 2.0, 3.0].divide(2)
    assert_equal [0.5, 1.0, 1.5], [1, 2, 3].divide(2.0)
    assert_equal [0, 1.0, 1], [1, 2.0, 3].divide(2)
    assert_equal [-1, -2, -3], [1, 2, 3].divide(-1)
    assert_equal [-1, -2.0, -3], [2, 4.0, 6].divide(-2)
    assert_equal [-1.0, -2.0, -3.0], [2.0, 4.0, 6.0].divide(-2)
    assert_equal [-1.0, -2.0, -3.0], [2, 4, 6].divide(-2.0)
    assert_equal [1, 2, 3, 4, 5], (1..5).divide(1)
    assert_equal [1.0, 2.0, 3.0, 4.0, 5.0], (1..5).divide(1.0)
    assert_equal [-1.0, -2.0, -3.0, -4.0, -5.0], (1..5).divide(-1.0)
    assert_equal [-3, -2, -1, 0, 1, 2, 3], (-3..3).divide(1)

    assert_equal Float::INFINITY, 2.2.divide(0)

    assert_in_delta 1.981, 6.6.divide(3.33)
    assert_in_delta 1.981, (6.6).divide(3.33)

    assert_raises(NoMethodError) { 'a'.divide(1) }
    assert_raises(NoMethodError) { 'a string'.divide(1) }
    assert_raises(TypeError) { 1.divide('a') }
    assert_raises(ZeroDivisionError) { 0.divide(0) }
    assert_raises(ZeroDivisionError) { 1.divide(0) }

    assert_output("3\n") { p 6.divide(2) }
    assert_output("1\n") { p (-1.divide(-1)) }
    assert_output("1.0\n") { p (-1.divide(-1.0)) }
    assert_output("1.0\n") { p (-1.0.divide(-1.0)) }
    assert_output("(1/3)\n") { p Rational(2, 3).divide(2) }
    assert_output("[1, 2, 3]\n") { p [1, 2, 3].divide(1) }
    assert_output("[1, 2, 3, 4, 5]\n") { p (1..5).divide(1) }
    assert_output("[-3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0]\n") { p (-3..3).divide(1.0) }
    assert_output("1.0\n2.0\n3.0\n") { puts [2, 4, 6].divide(2.0) }
    assert_output("[1, 2.0, 3]\n") { print [2, 4.0, 6].divide(2), "\n" }
  end
end
