class GrammarStats
  def initialize
      # ...
    @total_checks = 0
    @passed_amount = 0
    
  end
  
  def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    first_letter_is_uppercase = text[0] == text[0].upcase
    last_character_is_valid = [".", "!", "?"].include? text[-1]
    if first_letter_is_uppercase && last_character_is_valid
      @passed_amount += 1
      @total_checks += 1
      return true
    else
      @total_checks += 1
      return false
    end
  end
  
  def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    ((@passed_amount / @total_checks.to_f) * 100).round
    
  end
end