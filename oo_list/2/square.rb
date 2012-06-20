class Square
  attr_accessor :size

  def initialize(size)
    self.size = size
  end

  def size=(new)
    new > 0 ? (@size = new) : (raise InvalidSize)
  end
end

class InvalidSize < Exception
end
