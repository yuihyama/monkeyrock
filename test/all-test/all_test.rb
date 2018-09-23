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

    # assert_output: p:
    assert_output("0\n") { p 1.add(2).subt(3) }
    assert_output("[1, 2, 3]\n") { p [1, 2, 3].add(4).subt(4) }

    # assert_output: puts:
    assert_output("0\n") { puts 1.add(2).subt(3) }
    assert_output("1\n2\n3\n") { puts [1, 2, 3].add(4).subt(4) }

    # assert_output: print:
    assert_output("[1, 2, 3]\n") { print [1, 2, 3].add(4).subt(4), "\n" }
  end
end
