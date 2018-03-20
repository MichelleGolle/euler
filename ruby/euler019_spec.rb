require './euler019.rb'

describe "Sundays" do
  it "counts" do
    sun = Sunday.new
    expect(sun.count).to eq(171)
  end
end
