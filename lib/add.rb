module Addition
  def add(x)
    if instance_of?(Integer) || instance_of?(Float) || instance_of?(Rational)
      send(:+, x)
    elsif instance_of?(Array) || instance_of?(Range)
      pr = proc { |n| n + x }
      map(&pr)
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
