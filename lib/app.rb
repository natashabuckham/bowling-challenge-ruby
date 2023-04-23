class Bowling
  attr_accessor :rolls

  def initialize(rolls) #rolls is a comma-separated string of numbers representing the pins knocked over on each roll
    @rolls = rolls.split(", ").map{ |roll| roll.to_i }
    @frame_hash = {}

  end

  def score
    @score = 0
    @frame_hash.each do |frame_number, frame_rolls|
      if frame_rolls[0] == 10 # strike
        @score += frame_rolls[0]
        next_frame = @frame_hash[frame_number + 1]
        if next_frame.length == 1 # if next frame is a strike
          @score += next_frame[0]
          next_next_frame = @frame_hash[frame_number + 2]
          @score += next_next_frame[0]
        else
          @score += next_frame[0]
          @score += next_frame[1]
        end
      elsif frame_rolls.sum == 10 # spare
        @score += frame_rolls[0]
        @score += frame_rolls[1]
        next_frame = @frame_hash[frame_number + 1]
        @score += next_frame[0]
      else # normal
        @score += frame_rolls[0]
        @score += frame_rolls[1]
      end
    end
    return @score
  end

  def

  def frame_converter
    frame_count = 0
    until @rolls.empty?
      if @rolls[0] != 10
        frame_values = @rolls.shift(2)
        frame_count += 1
        @frame_hash[frame_count] = frame_values
      else
        frame_values = @rolls.shift
        frame_count += 1
        @frame_hash[frame_count] = [frame_values]
      end
    end

    return @frame_hash
  end

end
