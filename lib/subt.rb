module Subtraction
  def subt(x)
    return if instance_of?(Hash)

    [Integer, Float, Rational].each do |klass|
      return send(:-, x) if instance_of?(klass)
    end

    [Array, Range].each do |klass|
      if instance_of?(klass)
        pr = proc { |n| n - x }
        return map(&pr)
      end
    end
  end
end

class Numeric
  include Subtraction
end

class Array
  include Subtraction
end

class Range
  include Subtraction
end
