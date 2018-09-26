module Addition
  def add(x)
    [Integer, Float, Rational].each do |klass|
      return send(:+, x) if instance_of?(klass)
    end
    [Array, Range].each do |klass|
      if instance_of?(klass)
        pr = proc { |n| n + x }
        return map(&pr)
      end
    end
  end
end

class Numeric
  include Addition
end

class Array
  include Addition
end

class Range
  include Addition
end

# p 1.add(2)
# p [1, 2, 3].add(1)
# p (-1.0).add(-1)
