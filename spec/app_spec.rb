require "spec_helper"
require "app"

describe Bowling do
  it "converts rolls string to array of roll integers" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.convert_rolls).to eq [2, 4, 6, 1]
  end

  it "adds scores to total" do
    bowling = Bowling.new("2, 4, 6, 1")
    result = bowling.convert_rolls
    expect(bowling.score(result)).to eq 13
  end

  it "increases frame by 1" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.increase_frame
    expect(bowling.frame).to eq 1
  end

  it "keeps track of rolls" do
    bowling = Bowling.new("2, 4, 6, 1")
    result = bowling.convert_rolls
    bowling.score(result)
    expect(bowling.roll_tracker).to eq 4
  end
end
