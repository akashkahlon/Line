class Line
  attr_accessor :initial_point, :final_point

  def initialize(initial_point, final_point)
    @initial_point = initial_point
    @final_point = final_point
  end

  def distance
    distance = Math.sqrt((self.initial_point.x_coordinate - self.final_point.x_coordinate) ** 2 + (self.initial_point.y_coordinate - self.final_point.y_coordinate) ** 2 )
    return distance

  end
  def self.point_comparison(point_one, point_two)
    if point_one.x_coordinate == point_two.x_coordinate && point_one.y_coordinate == point_two.y_coordinate
      return true
    else
      return false
    end
  end

  def self.line_equality(line_one, line_two)
    if point_comparison(line_one.initial_point, line_two.initial_point) && point_comparison(line_one.final_point, line_two.final_point)
      return true
    elsif point_comparison(line_one.initial_point, line_two.final_point) && point_comparison(line_one.final_point, line_two.initial_point)
      return true
    else
      return false
    end
  end


  def line_equality_without_self(line_two)
    if Line.point_comparison(self.initial_point, line_two.initial_point) && Line.point_comparison(self.final_point, line_two.final_point)
      return true
    elsif Line.point_comparison(self.initial_point, line_two.final_point) && Line.point_comparison(self.final_point, line_two.initial_point)
      return true
    else
      return false
    end
  end

  def calculate_slope
    if self.final_point.x_coordinate - self.initial_point.x_coordinate == 0
      slope = "undefined"
      return slope
    else
      slope = ( self.final_point.y_coordinate - self.initial_point.y_coordinate ).to_f / ( self.final_point.x_coordinate - self.initial_point.x_coordinate)
      return slope
    end
  end

  def self.orthogonality_check(line_one, line_two)
    slope_of_line_one = line_one.calculate_slope
    slope_of_line_two = line_two.calculate_slope
    if slope_of_line_two == 0 && slope_of_line_one == 'undefined' || slope_of_line_one == 0 && slope_of_line_two == 'undefined'
      return true
    elsif line_one.calculate_slope * line_two.calculate_slope == -1
      return true
    else
      return false
    end
  end

end
