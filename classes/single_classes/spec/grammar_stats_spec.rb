require "grammar_stats"

RSpec.describe GrammarStats do
  it "returns true depending whether text begins with capital letter and ends with a sentence-ending punctuation mark" do
    grammar_stats = GrammarStats.new
    sentence_one = "Hello, it's me."
    expect(grammar_stats.check(sentence_one)).to eq true
    sentence_two = "Hello, it's me!"
    expect(grammar_stats.check(sentence_two)).to eq true
    sentence_three = "Hello, it's me?"
    expect(grammar_stats.check(sentence_three)).to eq true
  end  

  it "returns false depending if text does not begin with capital letter and ends with a sentence-ending punctuation mark" do
    grammar_stats = GrammarStats.new
    sentence_one = "Hello, it's me"
    expect(grammar_stats.check(sentence_one)).to eq false
    sentence_two = "hello, it's me!"
    expect(grammar_stats.check(sentence_two)).to eq false
    sentence_three = "hello, it's me"
    expect(grammar_stats.check(sentence_three)).to eq false
  end

  it "Returns as an integer the percentage of texts checked that passed the check defined in the `check` method so far." do
    grammar_stats = GrammarStats.new
 
    grammar_stats.check("Hi!")
    expect(grammar_stats.percentage_good).to eq 100
    grammar_stats.check("hi")
    expect(grammar_stats.percentage_good).to eq 50
    grammar_stats.check("Hi!")
    expect(grammar_stats.percentage_good).to eq 67
    grammar_stats.check("hello, what is this!")
    expect(grammar_stats.percentage_good).to eq 50
    grammar_stats.check("Hello, it's all good")
    expect(grammar_stats.percentage_good).to eq 40
  end

end