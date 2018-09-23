module Subtraction
  def subt(x)
    if instance_of?(Integer) || instance_of?(Float)
      send(:-, x)
    else
      pr = proc { |n| n - x }
      map(&pr)
    end
  end
end

class Integer
  include Subtraction
end

class Float
  include Subtraction
end

class Array
  include Subtraction
end
