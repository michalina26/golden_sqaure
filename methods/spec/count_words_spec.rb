require 'count_words'

RSpec.describe "count_words" do
  it "takes a string as an argument and returns the number of words in that string" do
    result = count_words("Hi, how's it going?")
    expect(result).to eq 4
  end
end
