require './ball'

describe Ball do
  it "creates a ball with a color" do
    ball = Ball.new 'white'
    ball.color.should == 'white'
  end

  it "changes ball's color" do
    ball = Ball.new 'white'
    ball.color = 'black'
    ball.color.should == 'black'
  end

  it "can't create ball without a color" do
    expect { ball = Ball.new }.to raise_error ArgumentError
  end
end
