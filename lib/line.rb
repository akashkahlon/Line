class Line
  def initialize(initial_x_coordinate,initial_y_coordinate,final_x_coordinate,final_y_coordinate)
   @initial_x_coordinate=initial_x_coordinate
   @initial_y_coordinate=initial_y_coordinate
   @final_x_coordinate=final_x_coordinate
   @final_y_coordinate=final_y_coordinate
  end
  def distance
    distance = Math.sqrt((@initial_x_coordinate-@final_x_coordinate) ** 2 + (@initial_y_coordinate-@final_y_coordinate) ** 2 )
    puts "distance: #{distance}"
    return distance
  end
end
