require 'personal_diary'

RSpec.describe "make_snippet method" do
  it "returns first five words from input" do
    diary_entry = "Today has been a wonderful day"
    result = make_snippet(diary_entry)
    expect(result).to eq "Today has been a wonderful..."
  end
  it "returns the full string if string is less than five words" do
    diary_entry = "Today is sunny" 
    result = make_snippet(diary_entry)
    expect(result).to eq "Today is sunny"
  end
end