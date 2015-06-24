class Rectangle
  attr_accessor :point_one, :point_two, :point_three, :point_four

  def initialize(point_one, point_two, point_three, point_four)
    if Rectangle.validate(point_one, point_two, point_three, point_four)
      @point_one = point_one
      @point_two = point_two
      @point_three = point_three
      @point_four = point_four
    else
      false
    end
  end
  def self.new_initialize(length, length_unit, breadth, breadth_unit)
    length,breadth = Rectangle.unit_decider(length, length_unit, breadth, breadth_unit)
    point_one = Point.new(0, 0)
    point_two = Point.new(0, length)
    point_three = Point.new(breadth, length)
    point_four = Point.new(breadth,0)
    Rectangle.new(point_one, point_two, point_three, point_four)
  end

  def self.unit_decider(length, length_unit, breadth, breadth_unit)
    if length_unit == "m"
      length = length * 1000
    elsif length_unit == "cm"
      length = length * 100
    elsif length_unit == nil || length_unit == "mm"
      length = length
    end

    if breadth_unit == "m"
      breadth = breadth * 1000
    elsif breadth_unit == "cm"
      breadth = breadth * 100
    elsif breadth_unit == "mm" || breadth_unit == nil
      breadth = breadth
    end
    return length,breadth
  end

  def calculate_area
    area = ( Line.new(@point_one, @point_two).distance * Line.new(@point_one, @point_four).distance )
    return area
  end

  def calculate_perimeter
    perimeter = 2 * (Line.new(@point_one, @point_two).distance +  Line.new(@point_one, @point_four).distance )
    return perimeter
  end

  def self.validate(point_one, point_two, point_three, point_four)
    centre_x_coordinate = (point_one.x_coordinate + point_two.x_coordinate  + point_three.x_coordinate  + point_four.x_coordinate ).to_f / 4
    centre_y_coordinate = (point_one.y_coordinate  + point_two.y_coordinate  + point_three.y_coordinate  + point_four.y_coordinate ).to_f / 4

    distance_one = (point_one.x_coordinate - centre_x_coordinate) ** 2 + (point_one.y_coordinate - centre_y_coordinate) ** 2
    distance_two = (point_two.x_coordinate - centre_x_coordinate) ** 2 + (point_two.y_coordinate - centre_y_coordinate) ** 2
    distance_three = (point_three.x_coordinate - centre_x_coordinate) ** 2 + (point_three.y_coordinate - centre_y_coordinate) ** 2
    distance_four = (point_four.x_coordinate - centre_x_coordinate) ** 2 + (point_four.y_coordinate - centre_y_coordinate) ** 2

    return true if distance_one == distance_two && distance_one == distance_three && distance_one == distance_four
    false
  end
end

