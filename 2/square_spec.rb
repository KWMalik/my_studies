require "./square"

describe Square do
  it "creates a square with width and height" do
    square = Square.new 10
    square.size.should == 10
  end

  it "should change square size" do
    square = Square.new 10
    square.size.should == 10
    square.size = 20
    square.size.should == 20
  end

  it "can't create square with invalid side's size" do
    expect { Square.new 0 }.to raise_error InvalidSize
    expect { Square.new -10 }.to raise_error InvalidSize
  end

  it "can't change square's size with a new invalid size" do
    square = Square.new 10
    expect { square.size = 0 }.to raise_error InvalidSize
    expect { square.size = -10 }.to raise_error InvalidSize
  end
end
