require './euler016.rb'

describe "count" do
  it "runs" do
    count = Count.new
    expect(count.sum).to eq(1366)
  end
end
