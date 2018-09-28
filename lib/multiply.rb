module Multiplication
  def multiply(x)
    [Integer, Float, Rational, Complex].each do |klass|
      return send(:*, x) if instance_of?(klass)
    end

    [Array, Range].each do |klass|
      if instance_of?(klass)
        pr = proc { |n| n * x }
        return map(&pr)
      end
    end
  end
end

class Numeric
  include Multiplication
end

class Array
  include Multiplication
end

class Range
  include Multiplication
end
