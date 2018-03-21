require './euler022.rb'

describe "Names" do
  it "sums" do
    names = Names.new
    expect(names.sum).to eq(871198282)
  end
end
