User will input a string of comma-separated numbers which constitutes all the rolls for their game.

Programme will output a scorecard, showing the score for each frame and the total score. E.g.
Frame 1: 5, 0
Type: normal
Score: 5

Frame 2: 10, -
Type: strike
Score: 25

Frame 3: 3, 7
Type: spare
Score: 37

Frame 4: 2, 2
Type: normal
Score: 41

Total score: 41

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
  it "returns the score after 10 frames" do

  end

  it "allows an extra roll after 10th frame for a spare bonus" do

  end

  it "allows an extra roll after 10th frame for a strike bonus" do

  end

  it "calculates the score for a gutter game" do

  end

  it "calculates the score for a perfect game" do

  end


REFACTOR SCORE METHOD
