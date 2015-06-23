class Point
  attr_accessor :x_coordinate, :y_coordinate

  def initialize(x_coordinate, y_coordinate)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
  end

  def self.are_equal(point_one, point_two)
    if point_one.x_coordinate == point_two.x_coordinate && point_one.y_coordinate == point_two.y_coordinate
      return true
    else
      return false
    end
  end
end
