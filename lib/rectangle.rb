class Rectangle
  attr_accessor :point_one, :point_two, :point_three, :point_four

  def initialize(point_one, point_two, point_three, point_four)
    @point_one = point_one
    @point_two = point_two
    @point_three = point_three
    @point_four = point_four
  end

  def self.new_initialize(length, breadth)
    point_one = Point.new(0, 0)
    point_two = Point.new(0, length)
    point_three = Point.new(breadth, length)
    point_four = Point.new(breadth,0)
    Rectangle.new(point_one, point_two, point_three, point_four)
  end

  def calculate_area
    area = ( Line.new(@point_one, @point_two).distance * Line.new(@point_one, @point_four).distance )
    return area
  end

  def calculate_perimeter
    perimeter = 2 * (Line.new(@point_one, @point_two).distance +  Line.new(@point_one, @point_four).distance )
    return perimeter
  end
end

