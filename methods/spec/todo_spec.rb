require "todo" 

RSpec.describe "todo_list" do
  context "string is empty" do
    it "fails" do
      expect { todo_list("") }.to raise_error "This string is empty."
    end
  end

  context "string DOES NOT include #TODO" do
    it "returns false" do
      result = todo_list("yoga")
      expect(result).to eq false
    end
  end

  context "string includes #TODO" do
    it "returns with true" do
      result = todo_list("#TODO yoga")
      expect(result).to eq true
    end
  end

end
