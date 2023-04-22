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
end
