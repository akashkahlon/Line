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
end

