class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @word_chunk_total = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    words = @contents.split(" ")
    return words.count     
  end

  def reading_time(wpm) 
    minutes_to_read = (count_words() / wpm.to_f)
    return minutes_to_read
  end
  
  def reading_chunk(wpm, minutes) 
    word_arr = @contents.split(' ')
    words_read = wpm * minutes
    chunk = word_arr.slice(@word_chunk_total, words_read).join(' ')
    @word_chunk_total += words_read
      if @word_chunk_total > word_arr.length
        @word_chunk_total = 0
      end
  
    return chunk
    
  end
end