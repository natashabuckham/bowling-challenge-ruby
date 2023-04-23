class Bowling
  attr_accessor :rolls

  def initialize(rolls) #rolls is a comma-separated string of numbers representing the pins knocked over on each roll
    @rolls = rolls.split(", ").map{ |roll| roll.to_i }
    @frame_hash = {}
  end

  def score
    @score = 0

    @frame_hash.each do |frame_number, frame_rolls|
      @score += frame_rolls[0]

      if frame_rolls[0] == 10 # strike
        strike_frame(frame_number, frame_rolls)

      elsif frame_rolls.sum == 10 # spare
        spare_frame(frame_number, frame_rolls)

      else # normal
        normal_frame(frame_number, frame_rolls)
      end
    end

    return @score
  end

  def normal_frame(frame_number, frame_rolls)
    @score += frame_rolls[1]
  end

  def spare_frame(frame_number, frame_rolls)
    @score += frame_rolls[1]
    next_frame = @frame_hash[frame_number + 1]
    @score += next_frame[0]
  end

  def strike_frame(frame_number, frame_rolls)
    next_frame = @frame_hash[frame_number + 1]

    if next_frame.length == 1 # if next frame is a strike
      @score += next_frame[0]
      next_next_frame = @frame_hash[frame_number + 2]
      @score += next_next_frame[0]

    else # if next frame is not a strike
      @score += next_frame[0]
      @score += next_frame[1]
    end
  end

  def frame_converter
    frame_count = 0

    until @rolls.empty?
      if @rolls[0] != 10 # not a strike
        frame_values = @rolls.shift(2)
        frame_count += 1
        @frame_hash[frame_count] = frame_values

      else # is a strike
        frame_values = @rolls.shift
        frame_count += 1
        @frame_hash[frame_count] = [frame_values]
      end
    end

    return @frame_hash
  end

end
