require 'spec_helper'

describe "distance" do
  it "takes co-ordinates and calculates the distance" do
    initial_point = Point.new(2,3)
    final_point = Point.new(7,9)
    line  = Line.new(initial_point,final_point)

    expect(line.distance).to eq Math.sqrt((3-9) ** 2 + (2-7) ** 2 )
  end
end
