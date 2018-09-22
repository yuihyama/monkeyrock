require 'minitest/autorun'
require './lib/addition'

class AddtionTest < Minitest::Test
  def test_addtion
    assert_equal 3, 1.addition(2)
    assert_equal 0, 0.addition(0)
    assert_equal 1, 0.addition(1)
    assert_equal 1, 1.addition(0)
    assert_equal(-1, 0.addition(-1))
    assert_equal(-1, -1.addition(0))
    assert_equal(-2.0, -1.addition(-1.0))
    assert_equal(-2.0, (-1.0).addition(-1))
    assert_equal(-2.0, -1.0.addition(-1))
    assert_equal(-2.0, (-1.0).addition(-1.0))
    assert_equal(-2.0, -1.0.addition(-1.0))
    assert_equal 2.2, (1.1).addition(1.1)
    assert_equal 2.2, 1.1.addition(1.1)
    assert_equal [3, 4, 5], [1, 2, 3].addition(2)
    assert_equal [3, 4.0, 5], [1, 2.0, 3].addition(2)
    assert_equal [0, 1, 2], [1, 2, 3].addition(-1)

    assert_raises(NoMethodError) { 'a'.addition(1) }
    assert_raises(NoMethodError) { 'a string'.addition(1) }
    assert_raises(TypeError) { 1.addition('a') }

    assert_output("3\n") { p 1.addition(2) }
    assert_output("-2\n") { p (-1.addition(-1)) }
    assert_output("-2.0\n") { p (-1.addition(-1.0)) }
    assert_output("-2.0\n") { p (-1.0.addition(-1.0)) }
    assert_output("[3, 4, 5]\n") { p [1, 2, 3].addition(2) }
    assert_output("3.0\n4.0\n5.0\n") { puts [1, 2, 3].addition(2.0) }
    assert_output("[3, 4.0, 5]\n") { print [1, 2.0, 3].addition(2), "\n" }
  end
end
