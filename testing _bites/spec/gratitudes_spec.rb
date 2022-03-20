require 'gratitudes'
RSpec.describe Gratitudes do
  it "adding to the list of gratitudes" do
    my_gratitude_list = Gratitudes.new
    my_gratitude_list.add("sun")
    my_gratitude_list.add("tea")
    my_gratitude_list.add("flowers")
    result = my_gratitude_list.format()
    expect(result).to eq "Be grateful for: sun, tea, flowers"
  end
end

