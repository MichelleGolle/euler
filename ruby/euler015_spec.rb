require './euler015.rb'

describe "grid" do
  it "runs" do
    grid = Grid.new
    expect(grid.count(2)).to eq(6)
  end
end
