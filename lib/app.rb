class Bowling
  def initialize(rolls) #rolls is a comma-separated string of numbers representing the pins knocked over on each roll
    @rolls = rolls
  end

  def convert_rolls
    @rolls.split(", ").map{ |roll| roll.to_i }
  end

  def score(convert_rolls)
    @score = 0
    convert_rolls.each { |roll| @score += roll }
    return @score
  end
end
