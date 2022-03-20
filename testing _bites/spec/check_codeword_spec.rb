require 'check_codeword'

RSpec.describe "check_codeword" do
  it "is codeword equal to horse?" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "does codeword start with h and end with e" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
  it "codeword isn't horse" do
    result = check_codeword("dog")
    expect(result).to eq "WRONG!"
  end
end
