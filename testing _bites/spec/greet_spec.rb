require 'greet'

RSpec.describe "greet method" do
  it "returns personalised greeting" do
    result = greet("Michalina")
    expect(result).to eq "Hello, Michalina!"
  end
end 

