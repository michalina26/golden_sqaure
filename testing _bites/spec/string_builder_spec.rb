require 'string_builder'

RSpec.describe StringBuilder do
  it "add to string and return the length" do
  my_string = StringBuilder.new
  my_string.add("My name is")
  my_string.add(" Michalina")
  result = my_string.size
  expect(result).to eq 20
  end
  it "returns string input" do
  my_string = StringBuilder.new
  my_string.add("My name is Michalina")
  result = my_string.output
  expect(result).to eq "My name is Michalina"
  end
end


