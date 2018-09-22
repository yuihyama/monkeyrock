module Addition
  def addition(x)
    if instance_of?(Integer) || instance_of?(Float)
      send(:+, x)
    else
      add = proc { |n| n + x }
      map(&add)
    end
  end
end

class Integer
  include Addition
end

class Float
  include Addition
end

class Array
  include Addition
end
