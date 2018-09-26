require 'minitest/autorun'
require './lib/subt'

class SubtTest < Minitest::Test
  def test_subt
    assert_equal 1, 2.subt(1)
    assert_equal 0, 0.subt(0)
    assert_equal(-1, 0.subt(1))
    assert_equal 1, 1.subt(0)
    assert_equal 1, 0.subt(-1)
    assert_equal(-1, -1.subt(0))
    assert_equal 0.0, -1.subt(-1.0)
    assert_equal 0.0, (-1.0).subt(-1)
    assert_equal 0.0, -1.0.subt(-1)
    assert_equal(-0, (-1.0).subt(-1.0))
    assert_equal 0.0, -1.0.subt(-1.0)
    assert_equal 1.0, (2.1).subt(1.1)
    assert_equal(-1.0, 1.1.subt(2.1))
    # Expected, Actual, (-1/3)
    assert_equal Rational(-1, 3), Rational(2, 3).subt(1)
    assert_equal [0, 1, 2], [1, 2, 3].subt(1)
    assert_equal [-1, 0.0, 1], [1, 2.0, 3].subt(2)
    assert_equal [2, 3, 4], [1, 2, 3].subt(-1)
    assert_equal [0, 1, 2, 3, 4], (1..5).subt(1)

    assert_raises(NoMethodError) { 'a'.subt(1) }
    assert_raises(NoMethodError) { 'a string'.subt(1) }
    assert_raises(TypeError) { (1.0).subt('a') }
    assert_raises(TypeError) { 1.0.subt('a') }

    assert_output("1\n") { p 2.subt(1) }
    assert_output("0\n") { p (-1.subt(-1)) }
    assert_output("0.0\n") { p (-1.subt(-1.0)) }
    assert_output("1.0\n") { p (-1.0.subt(-2.0)) }
    assert_output("(-1/3)\n") { p Rational(2, 3).subt(1) }
    assert_output("[0, 1, 2]\n") { p [1, 2, 3].subt(1) }
    assert_output("[0, 1, 2, 3, 4]\n") { p (1..5).subt(1) }
    assert_output("0.0\n1.0\n2.0\n") { puts [1, 2, 3].subt(1.0) }
    assert_output("[-1, 0.0, 1]\n") { print [1, 2.0, 3].subt(2), "\n" }
  end
end
