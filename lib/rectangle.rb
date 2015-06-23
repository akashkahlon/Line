class Rectangle
  attr_accessor :length_line, :breadth_line

  def intialize(length_line, breadth_line)
    @length_line = length_line
    @breadth_line = breadth_line
  end

  def calculate_area
    area = ( self.length_line.distance * self.breadth_line.distance )
    return area
  end

end

