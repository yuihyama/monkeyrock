module NextNum
  def next_num
    return send(:+, 1) if instance_of?(Integer)
    return send(:+, 0.1) if instance_of?(Float)
    return last.send(:+, 1) if instance_of?(Array) && last.instance_of?(Integer)
    return last.send(:+, 0.1) if instance_of?(Array) && last.instance_of?(Float)
    return last.send(:+, 1) if instance_of?(Range)
  end
end

class Integer
  include NextNum
end

class Float
  include NextNum
end

class Array
  include NextNum
end

class Range
  include NextNum
end
