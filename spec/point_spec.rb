require 'spec_helper'

describe "initialize" do
  it "takes input for a point" do
    point=Point.new(3,5)
    expect(point.x_coordinate).to eq 3
    expect(point.y_coordinate).to eq 5
  end
end
