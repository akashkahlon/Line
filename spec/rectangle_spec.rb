require 'spec_helper'

describe "calculate_area" do
  it "takes 4 points and outputs the area the area of the rectangle" do
    point_one = Point.new(0,0)
    point_two = Point.new(0,5)
    point_three = Point.new(4,5)
    point_four = Point.new(4,0)
    expect(Rectangle.new(point_one, point_two, point_three, point_four).calculate_area).to eq 20
  end
  it "takes 2 inputs, length and breadth and calculates the output" do
    length = 5
    breadth = 4
    length_unit = "mm"
    breadth_unit = "mm"
    expect(Rectangle.new_initialize(length, length_unit, breadth, breadth_unit).calculate_area).to eq 20
  end
end

describe "initialize" do
  it "takes 4 points as input" do
    point_one=Point.new(0,0)
    point_two=Point.new(0,5)
    point_three=Point.new(4,5)
    point_four=Point.new(4,0)
    rectangle = Rectangle.new(point_one, point_two, point_three, point_four)
    expect(rectangle.point_one.x_coordinate).to eq point_one.x_coordinate
    expect(rectangle.point_one.y_coordinate).to eq point_one.y_coordinate
    expect(rectangle.point_two.x_coordinate).to eq point_two.x_coordinate
    expect(rectangle.point_two.y_coordinate).to eq point_two.y_coordinate
    expect(rectangle.point_three.x_coordinate).to eq point_three.x_coordinate
    expect(rectangle.point_three.y_coordinate).to eq point_three.y_coordinate
    expect(rectangle.point_four.x_coordinate).to eq point_four.x_coordinate
    expect(rectangle.point_four.y_coordinate).to eq point_four.y_coordinate
  end
end

describe "new_initialize" do
  it "takes length and breadth as input and gives 4 points" do
    length = 5
    breadth = 4
    length_unit = "mm"
    breadth_unit = "mm"
    rectangle = Rectangle.new_initialize(length, length_unit, breadth, breadth_unit)
    expect(rectangle.point_one.x_coordinate).to eq 0
    expect(rectangle.point_one.y_coordinate).to eq 0
    expect(rectangle.point_two.x_coordinate).to eq 0
    expect(rectangle.point_two.y_coordinate).to eq length
    expect(rectangle.point_three.x_coordinate).to eq breadth
    expect(rectangle.point_three.y_coordinate).to eq length
    expect(rectangle.point_four.x_coordinate).to eq breadth
    expect(rectangle.point_four.y_coordinate).to eq 0
  end
end

describe "unit_decider" do
  length = 5
  breadth = 4
  it "takes length and breadth in meter and converts it into mm format" do
    length_unit = "m"
    breadth_unit = "m"
    expect(Rectangle.unit_decider(length, length_unit, breadth, breadth_unit)).to eq([length*1000, breadth*1000])
  end
end

describe "perimeter"do
  it "takes four points and calculates the perimeter of the rectangle " do
    point_one = Point.new(0,0)
    point_two = Point.new(0,5)
    point_three = Point.new(4,5)
    point_four = Point.new(4,0)
    expect(Rectangle.new(point_one, point_two, point_three, point_four).calculate_perimeter).to eq 18
  end
  it "takes length and breadth and calculates perimeter of rectangle" do
    length = 5
    breadth = 4
    length_unit = "mm"
    breadth_unit = "mm"
    expect(Rectangle.new_initialize(length, length_unit, breadth, breadth_unit).calculate_perimeter).to eq 18
  end
end

describe "validate" do
  it "returns true if points entered make a valid rectangle" do
    point_one = Point.new(0,0)
    point_two = Point.new(0,5)
    point_three = Point.new(4,5)
    point_four = Point.new(4,0)
    expect(Rectangle.validate(point_one, point_two, point_three, point_four)).to eq true

  end

  it "returns false if points entered dont make a valid point" do
    point_one = Point.new(0,0)
    point_two = Point.new(0,5)
    point_three = Point.new(0,7)
    point_four = Point.new(9,0)
    expect(Rectangle.validate(point_one, point_two, point_three, point_four)).to eq false
  end
end
