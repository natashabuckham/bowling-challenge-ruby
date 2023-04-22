require "spec_helper"
require "app"

describe Bowling do
  it "converts rolls string to array of roll integers" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.convert_rolls).to eq [2, 4, 6, 1]
  end

  xit "adds scores to total" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.score).to eq 13
  end
end
