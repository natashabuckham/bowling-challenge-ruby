User will input a string of comma-separated numbers which constitutes all the rolls for their game.

Previous frame?
Frame counter
Roll counter
Total score

Validation?

In a new frame:
- if first number == 10, the frame is a strike.
- Add 10 to the total score.
- Add one to the frame counter.
- Add one to the roll counter.
- Calculate the value of the next two rolls and add to the total.

- If first number is != 10, the frame will be two rolls.
- Total the value of the two rolls and add to the total score.
- Add one to the frame counter.
- Add two the roll counter.

- If the total is 10, the frame is a spare.
- Add the value of the next roll to the total.

- If frame number == 11, stop and display total.

Tests:
 it "adds scores to total" do

 end

 it "keeps track of frames" do

  end

  it "keeps track of rolls" do

  end

  it "adds bonus points for a spare" do

  end

  it "changes frame after one roll if it is a strike" do

  end

  it "adds bonus points for a strike" do

  end

  it "returns the score after 10 frames" do

  end

  it "accounts for sequential spares" do

  end

  it "accounts for sequential strikes" do

  end

  it "allows an extra roll after 10th frame for a spare bonus" do

  end

  it "allows an extra roll after 10th frame for a strike bonus" do

  end

  it "calculates the score for a gutter game" do

  end

  it "calculates the score for a perfect game" do

  end
