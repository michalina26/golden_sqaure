require 'counter'

RSpec.describe Counter do
  it "adding to a counter" do
  total = Counter.new
  total.add(5)
  result = total.report
  expect(result).to eq "Counted to 5 so far."
  end
end
