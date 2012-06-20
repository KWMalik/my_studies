require './rectangle'

describe Rectangle do
  it "creates a rectangle with width and height" do
    rec = Rectangle.new width=10, height=20
    rec.width.should == 10
    rec.height.should == 20
  end

  it "can't create rectangle with invalid width or height" do
    expect { Rectangle.new width=10, height=0 }.to raise_error InvalidValue
    expect { Rectangle.new width=10, height=-10 }.to raise_error InvalidValue

    expect { Rectangle.new width=0, height=10 }.to raise_error InvalidValue
    expect { Rectangle.new width=-10, height=10 }.to raise_error InvalidValue
  end

  it "can't create rectangle with missing attribute" do
    expect { Rectangle.new height=10 }.to raise_error ArgumentError
    expect { Rectangle.new width=10 }.to raise_error ArgumentError
  end

  it "can't change rectangle's witdth or height by an invalid value" do
    rec = Rectangle.new height=10, width=20
    expect { rec.height = 0 }.to raise_error InvalidValue
    expect { rec.width = 0 }.to raise_error InvalidValue
  end

  it "returns rectangle's perimeter" do
    rec = Rectangle.new height=10, width=20
    rec.perimeter.should == 60
  end

  it "returns rectangle's area" do
    rec = Rectangle.new height=10, width=20
    rec.area.should == 200
  end
end
