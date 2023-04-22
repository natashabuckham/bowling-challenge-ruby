class Bowling
  attr_accessor :frame, :roll_tracker, :rolls

  def initialize(rolls) #rolls is a comma-separated string of numbers representing the pins knocked over on each roll
    @rolls = rolls.split(", ").map{ |roll| roll.to_i }
    @frame = 0
    @roll_tracker = 0

  end

  def score
    @score = 0
    frame_converter.each do |frame_number, frame_rolls|

      @score += frame_rolls[0]
      @score += frame_rolls[1]
      @roll_tracker += 2
    end
    return @score
  end

  def increase_frame
    @frame += 1
  end

  def frame_converter
    frame_count = 0
    frame_hash = {}

    until @rolls.empty?
      if @rolls[0] != 10
        frame_values = @rolls.shift(2)
        frame_count += 1
        frame_hash[frame_count] = frame_values
      else
        frame_values = @rolls.shift
        frame_count += 1
        frame_hash[frame_count] = [frame_values]
      end
    end

    return frame_hash
  end

end
