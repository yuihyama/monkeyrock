require 'minitest/autorun'
require './lib/next_num'

class NextNumTest < Minitest::Test
  def test_next_num
    assert_equal 2, 1.next_num
    assert_equal 1, 0.next_num
    assert_equal 0, -1.next_num
    assert_equal 0.2, 0.1.next_num
    assert_equal(-0.1, -0.2.next_num)
    assert_equal 4, [1, 2, 3].next_num
    assert_equal 1.1, [1.0].next_num
    assert_equal 11, (1..10).next_num

    assert_in_delta 1.2, 1.1.next_num
    assert_in_delta 3.3, [1, 2, 3.2].next_num

    assert_output("2\n") { p 1.next_num }
    assert_output("1\n") { puts 0.next_num }
    assert_output("0.2\n") { puts 0.1.next_num }
    assert_output("4\n") { puts [1, 2, 3].next_num }
    assert_output("1.1\n") { puts [1.0].next_num }
    assert_output("11\n") { puts (1..10).next_num }
  end
end
