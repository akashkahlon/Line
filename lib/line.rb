class Line
  attr_accessor :initial_x_coordinate, :initial_y_coordinate, :final_x_coordinate, :final_y_coordinate
  
  def initialize(initial_x_coordinate, initial_y_coordinate, final_x_coordinate, final_y_coordinate)
    @initial_x_coordinate = initial_x_coordinate
    @initial_y_coordinate = initial_y_coordinate
    @final_x_coordinate = final_x_coordinate
    @final_y_coordinate = final_y_coordinate
  end

 def distance
   distance = Math.sqrt((self.initial_x_coordinate - self.final_x_coordinate) ** 2 + (self.initial_y_coordinate - self.final_y_coordinate) ** 2 )
   puts "distance: #{distance}"
   return distance
  end
end

