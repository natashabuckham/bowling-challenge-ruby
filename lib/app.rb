class Bowling
  attr_accessor :frame

  def initialize(rolls) #rolls is a comma-separated string of numbers representing the pins knocked over on each roll
    @rolls = rolls
    @frame = 0
  end

  def convert_rolls
    @rolls.split(", ").map{ |roll| roll.to_i }
  end

  def score(convert_rolls)
    @score = 0
    convert_rolls.each do |roll|
      @score += roll
    end
    return @score
  end

  def increase_frame
    @frame += 1
  end
end
