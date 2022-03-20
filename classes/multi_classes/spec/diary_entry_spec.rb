require "diary_entry"

RSpec.describe DiaryEntry do
  it "returns title" do
    diary_entry = DiaryEntry.new("Friday", "Today is a great day!")
    expect(diary_entry.title).to eq "Friday"
  end

  it "returns contents" do
    diary_entry = DiaryEntry.new("Friday", "Today is a great day!")
    expect(diary_entry.contents).to eq "Today is a great day!"
  end

  it "counts the amount of words in contents" do
    diary_entry = DiaryEntry.new("Friday", "Today is a great day!")
    expect(diary_entry.count_words).to eq 5
  end

  it "clculates reading time" do
    contents = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on."
    diary_entry = DiaryEntry.new("Friday", contents)
    expect(diary_entry.count_words). to eq 30
    expect(diary_entry.reading_time(120)). to eq 0.25
  end

  context "returns a string with a chunk of contents that user can read within given number of minutes" do
    it "returns the full contents" do
      diary_entry = DiaryEntry.new("Friday", "This is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on.")
      chunk = (diary_entry.reading_chunk(120, (1/6.to_f)))
      expect(chunk).to eq "This is my very secret diary that no one has access to and we're not letting anyone get into it."
    end
  end

end