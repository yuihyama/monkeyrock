module Addition
  def add(x)
    if instance_of?(Integer) || instance_of?(Float)
      send(:+, x)
    else
      pr = proc { |n| n + x }
      map(&pr)
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
