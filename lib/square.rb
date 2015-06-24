class Square < Rectangle

  def self.new_initialize(side)
    point_one = Point.new(0, 0)
    point_two = Point.new(0, side)
    point_three = Point.new(side, side)
    point_four = Point.new(side,0)
    Rectangle.new(point_one, point_two, point_three, point_four)
  end
end
