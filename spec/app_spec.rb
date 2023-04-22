require "spec_helper"
require "app"

describe Bowling do
  it "converts rolls string to array of roll integers" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.rolls).to eq [2, 4, 6, 1]
  end

  it "adds scores to total" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.score).to eq 13
  end

  it "increases frame by 1" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.increase_frame
    expect(bowling.frame).to eq 1
  end

  it "keeps track of rolls" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.score
    expect(bowling.roll_tracker).to eq 4
  end

  it "converts rolls into a frames hash for normal frames" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.frame_converter).to eq( {1=>[2, 4], 2=>[6, 1] })
  end

  it "converts rolls into frames hash for strikes" do
    bowling = Bowling.new("10, 2, 4, 6, 1")
    expect(bowling.frame_converter).to eq( {1=>[10], 2=>[2, 4], 3=>[6, 1]} )
  end
end
