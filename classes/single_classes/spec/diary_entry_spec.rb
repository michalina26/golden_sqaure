require "diary_entry"

RSpec.describe DiaryEntry do
  it "returns title" do
    diary_entry = DiaryEntry.new("the greatest story ever told", "something")
    expect(diary_entry.title).to eq "the greatest story ever told"  
  end

  it "returns contents" do
    diary_entry = DiaryEntry.new("the greatest story ever told", "something")
    expect(diary_entry.contents).to eq "something"
  end

  it "takes a string as an argument and returns the number of words in that string" do
    diary_entry = DiaryEntry.new("the greatest story ever told", "Hi, how's it going?")
    expect(diary_entry.count_words).to eq 4
  end

  it "return zero when contents is empty" do
    diary_entry = DiaryEntry.new("the greatest story ever told", "")
    expect(diary_entry.count_words).to eq 0
  end

  it "calculates reading time" do
    contents = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on."
    diary_entry = DiaryEntry.new("the greatest story ever told", contents)
    expect(diary_entry.reading_time(120)). to eq 0.25
  end

  #it "returns a string with a chunk of contents that user can read within given number of #minutes" do
    #contents = "Ths is my very secret diary that no one has access to and we're not #letting anyone get into it. Sorry for the inconvenience. Please add six more words on.#"
    #diary_entry = DiaryEntry.new("the greatest story ever told", contents)
    #expect(diary_entry.reading_chunk(120, (1/6.to_f))).to eq "Ths is my very secret diary #that no one has access to and we're not letting anyone get into it."
    #expect(diary_entry.reading_chunk(120, (1/6.to_f))).to eq "Sorry for the #inconvenience. Please add six more words on."
  #end

    context "returns a string with a chunk of contents that user can read within given number of minutes" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new("the greatest story ever told", "This is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on.")
        chunk = (diary_entry.reading_chunk(120, (1/6.to_f)))
        expect(chunk).to eq "This is my very secret diary that no one has access to and we're not letting anyone get into it."
      end
    end

    context "with contents unreadbale within the time" do
      it  "it returns a readable chunk of contents" do
        diary_entry = DiaryEntry.new("the greatest story ever told", "Ths is my very secret diary that no one has access to and we're not")
        chunk = (diary_entry.reading_chunk(120, (1/12.to_f)))
        expect(chunk).to eq "Ths is my very secret diary that no one has access to and we're not"  
      end  
   end  
end

