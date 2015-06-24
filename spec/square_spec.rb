require 'spec_helper'

describe "new_initialize" do
  it "takes one side as input and gives 4 points" do
    side = 5
    square = Square.new_initialize(side)
    expect(square.point_one.x_coordinate).to eq 0
    expect(square.point_one.y_coordinate).to eq 0
    expect(square.point_two.x_coordinate).to eq 0
    expect(square.point_two.y_coordinate).to eq side
    expect(square.point_three.x_coordinate).to eq side
    expect(square.point_three.y_coordinate).to eq side
    expect(square.point_four.x_coordinate).to eq side
    expect(square.point_four.y_coordinate).to eq 0
  end
end

describe "calculate area" do
  it "takes one side and calculates the area of the square" do
    side = 5
    square=Square.new_initialize(side)
    expect(square.calculate_area).to eq 25
  end
end
