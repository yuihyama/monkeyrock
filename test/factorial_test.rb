require 'minitest/autorun'
require './lib/factorial'

class FactorialTest < Minitest::Test
  def test_factorial
    assert_equal 120, 5.factorial
    assert_equal 0, -1.factorial
    assert_equal 1, 0.factorial
    assert_equal 1, 1.factorial
    assert_equal 2, 2.factorial
    assert_equal 6, 3.factorial
    assert_equal 24, 4.factorial
    assert_equal 720, 6.factorial
    assert_equal 5040, 7.factorial
    #
    res = []
    (1..5).each { |n| res << n.factorial }
    assert_equal [1, 2, 6, 24, 120], res

    assert_raises(NoMethodError) { 'a'.factorial }
    assert_raises(NoMethodError) { 6.6.factorial }
    assert_raises(NoMethodError) { Rational(2, 3).factorial }
    assert_raises(NoMethodError) { Complex(2, 3).factorial }
    assert_raises(NoMethodError) { [2, 3].factorial }
    assert_raises(NoMethodError) { (1..5).factorial }

    assert_output("6\n") { p 3.factorial }
    assert_output("24\n") { puts 4.factorial }
    assert_output("120\n") { print 5.factorial, "\n" }
  end
end
