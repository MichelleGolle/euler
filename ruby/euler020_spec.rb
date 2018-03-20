require './euler020.rb'

describe "Factorial" do
  it "sums" do
    fact = Factorial.new
    expect(fact.sum).to eq(648)
  end
end
