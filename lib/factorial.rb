module Factorial
  def factorial
    return 0 if self < 0
    return (1..self).inject(1, :*) if instance_of?(Integer)
  end
end

class Integer
  include Factorial
end
