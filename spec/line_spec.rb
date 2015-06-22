require 'spec_helper'

describe "distance" do
  it "takes co-ordinates and calculates the distance" do
    line  = Line.new(2, 3, 7, 9)

    expect(line.distance).to eq Math.sqrt((3-9) ** 2 + (2-7) ** 2 )
  end
end
