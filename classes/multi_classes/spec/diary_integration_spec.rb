require "diary"
require "diary_entry"

RSpec.describe "Integration" do
  context "when we add a diary entry " do
    it "diary entry is added to the diary" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("title_one", "text_one")
    diary_entry_2 = DiaryEntry.new("title_two", "text_two")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
  end

  context "when diary has entries" do
    it "counts words of contents in diary" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title_one", "text one is great")
      diary_entry_2 = DiaryEntry.new("title_two", "text two is even better")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 9
    end
  end

  context "when diary has entries" do
    it "calculates time needed to read all contents of diary" do
      diary = Diary.new

      text_1 = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on."
      text_2 = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on."
      
      diary_entry_1 = DiaryEntry.new("title_one", text_1)
      diary_entry_2 = DiaryEntry.new("title_two", text_2)
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)

      expect(diary.reading_time(120)).to eq 0.50
    end
  end

  context "when diary has entries" do
    it "Returns an instance of diary entry representing the entry that is closest to, but not over, the length that the user could read in the minutes they have available given their reading speed." do

      diary = Diary.new

      text_1 = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on." #30
      text_2 = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on.Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on. Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on." #90
      text_3 = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on. Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on." #60
      text_4 = "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on. Ths is my very secret diary that no one has access to and we're not letting anyone get into" #20
      
      diary_entry_1 = DiaryEntry.new("title_one", text_1)
      diary_entry_2 = DiaryEntry.new("title_two", text_2)
      diary_entry_3 = DiaryEntry.new("title_three", text_3)
      diary_entry_4 = DiaryEntry.new("title_four", text_4)
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      diary.add(diary_entry_4)

      expect(diary.find_best_entry_for_reading_time(120, 0.50)).to eq "Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on. Ths is my very secret diary that no one has access to and we're not letting anyone get into it. Sorry for the inconvenience. Please add six more words on."
    end
  end

end