class Rectangle
  #attr_accessor :point_one, :point_two, :point_three, :point:four, :length, :breadth

  def intialize(point_one, point_two, point_three, point_four)
    @point_one = point_one
    @point_two = point_two
    @point_three = point_three
    @point_four = point_four
  end

  def calculate_area
    area = ( self.length_line.distance * self.breadth_line.distance )
    return area
  end

end

