require "spec_helper"
require "app"

describe Bowling do
  it "converts rolls string to array of roll integers" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.rolls).to eq [2, 4, 6, 1]
  end

  it "adds scores to total" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.frame_converter
    expect(bowling.score).to eq 13
  end

  it "increases frame by 1" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.increase_frame
    expect(bowling.frame).to eq 1
  end

  it "keeps track of rolls" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.frame_converter
    bowling.score
    expect(bowling.roll_tracker).to eq 4
  end

  it "converts rolls into a frames hash for normal frames" do
    bowling = Bowling.new("2, 4, 6, 1")
    expect(bowling.frame_converter).to eq( { 1=>[2, 4], 2=>[6, 1] })
  end

  it "converts rolls into frames hash for strikes" do
    bowling = Bowling.new("10, 2, 4, 6, 1")
    expect(bowling.frame_converter).to eq( { 1=>[10], 2=>[2, 4], 3=>[6, 1] } )
  end

  it "calculates scores for a game made up of normal frames" do
    bowling = Bowling.new("2, 4, 6, 1")
    bowling.frame_converter
    expect(bowling.score).to eq 13
  end

  it "adds bonus points for a spare" do
    bowling = Bowling.new("7, 3, 1, 2")
    bowling.frame_converter
    expect(bowling.score).to eq 14
  end

  it "adds bonus points for two spares in a row" do
    bowling = Bowling.new("7, 3, 5, 5, 2, 1")
    bowling.frame_converter
    expect(bowling.score).to eq 30
  end

  it "adds bonus points for a strike" do
    bowling = Bowling.new("10, 1, 3")
    bowling.frame_converter
    expect(bowling.score).to eq 18
  end

  it "adds bonus points for two strikes in a row" do
    bowling = Bowling.new("10, 10, 1, 3")
    bowling.frame_converter
    expect(bowling.score).to eq 39
  end
end
