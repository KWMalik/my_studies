class Rectangle
  attr_accessor :height, :width

  def initialize(width, height)
    self.width = width
    self.height = height
  end

  def width=(new)
    @width = validate_size(new)
  end

  def height=(new)
    @height = validate_size(new)
  end

  def validate_size(size)
    size > 0 ? size : (raise InvalidValue)
  end
end

class InvalidValue < Exception
end
