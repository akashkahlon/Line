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

  def self.line_equality(line_one, line_two)
    if line_one.initial_point == line_two.initial_point && line_one.final_point == line_two.final_point
      return true
    elsif line_one.initial_point == line_two.final_point && line_one.final_point == line_two.initial_point
      return true
    else
      return false
    end
  end


  def line_equality_without_self(line_two)
    if self.initial_point == line_two.initial_point && self.final_point == line_two.final_point
      return true
    elsif self.initial_point == line_two.final_point && self.final_point == line_two.initial_point
      return true
    else
      return false
    end
  end
end
