require 'spec_helper'


describe "distance" do
  it "takes co-ordinates and calculates the distance" do
    expect(Line.new(3,2,9,7).distance).to eq Math.sqrt((3-9) ** 2 + (2-7) ** 2 )
  end
end
