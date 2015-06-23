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
