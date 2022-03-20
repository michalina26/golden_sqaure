class DiaryEntry
  def initialize(title, contents) # title, contents are strings
      # ...
    @title = title
    @contents = contents
    @word_chunk_total = 0
  end
  
  def title
      # Returns the title as a string
    return @title 
  end
  
  def contents
    return @contents
    
      # Returns the contents as a string
  end
  
  def count_words
      # Returns the number of words in the contents as an integer
    words = @contents.split(" ")
    return words.count   
  end
  
  def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    minutes_to_read = (count_words() / wpm.to_f)
    return minutes_to_read
  end
  
  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
  word_arr = @contents.split(' ')
  p "the first thing is #{word_arr}"
  words_read = wpm * minutes
  p "then #{words_read}"
  chunk = word_arr.slice(@word_chunk_total, words_read).join(' ')

  @word_chunk_total += words_read
    if @word_chunk_total > word_arr.length
      @word_chunk_total = 0
    end

  return chunk
  
  end
end