def get_most_common_letter(text)
    text = text.gsub!(/[^a-zA-Z]/, '')
   
  counter = Hash.new(0) #this creates new hash
  text.chars.each do |char| #the method argument is used and chars.each iterates over 
    #each character, do || is used as argument for block 
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!") 

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

