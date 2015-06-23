require 'spec_helper'

describe "distance" do
  it "takes co-ordinates and calculates the distance" do
    initial_point = Point.new(2,3)
    final_point = Point.new(7,9)
    line  = Line.new(initial_point,final_point)

    expect(line.distance).to eq Math.sqrt((3-9) ** 2 + (2-7) ** 2 )
  end
end

describe "line_equality" do
  initial_point = Point.new(2,3)
  final_point = Point.new(7,9)
  third_point = Point.new(6,7)
  it "should return true if two lines have sam starting and end points" do
    line_one = Line.new(initial_point, final_point)
    line_two = Line.new(initial_point, final_point)
    expect(Line.line_equality(line_one, line_two)).to eq true
  end

  it "should return false if lines are not equal" do
    line_one = Line.new(initial_point, third_point)
    line_two = Line.new(initial_point, final_point)
    expect(Line.line_equality(line_one, line_two)).to eq false
  end

  it "should return true if starting and ending points are reversed but same" do 
    line_one = Line.new(initial_point, final_point)
    line_two = Line.new(final_point, initial_point)
    expect(Line.line_equality(line_one, line_two)).to eq true
  end
end

describe "line_equality_without_self" do
  initial_point = Point.new(2,3)
  final_point = Point.new(7,9)
  third_point = Point.new(6,7)
  it "should return true if two lines have sam starting and end points" do
    line_one = Line.new(initial_point, final_point)
    line_two = Line.new(initial_point, final_point)
    expect(line_one.line_equality_without_self(line_two)).to eq true
  end

  it "should return false if lines are not equal" do
    line_one = Line.new(initial_point, third_point)
    line_two = Line.new(initial_point, final_point)
    expect(line_one.line_equality_without_self(line_two)).to eq false
  end

  it "should return true if starting and ending points are reversed but same" do 
    line_one = Line.new(initial_point, final_point)
    line_two = Line.new(final_point, initial_point)
    expect(line_one.line_equality_without_self(line_two)).to eq true
  end
end

describe "calculate_slope" do
  it "calculates the slope of a line" do
    initial_point = Point.new(2,3)
    final_point = Point.new(7,9)
    expect(Line.new(initial_point, final_point).calculate_slope).to eq (9-3).to_f / (7-2)
  end

  it "calculates the slope of a line for vertical line" do
    initial_point = Point.new(2,3)
    final_point = Point.new(2,9)
    expect(Line.new(initial_point, final_point).calculate_slope).to eq 'undefined'
  end
end

describe "orthogonality check" do
  initial_point_1 = Point.new(0,-4)
  final_point_1 = Point.new(-1,-7)
  initial_point_2 = Point.new(3,0)
  final_point_2 = Point.new(-3,2)

  it "returns true if 2 lines are othogonal" do
    line_one=Line.new(initial_point_1, final_point_1)
    line_two=Line.new(initial_point_2, final_point_2)
    expect(Line.orthogonality_check(line_one, line_two)).to eq true
  end
  it "returns false if 2 lines are not orthogonal" do
    line_one=Line.new(initial_point_1, initial_point_2)
    line_two=Line.new(initial_point_1, final_point_2)
    expect(Line.orthogonality_check(line_one, line_two)).to eq false
  end
end
