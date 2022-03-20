require "music_library"

RSpec.describe MusicLibrary do
  context "initially" do
    it "is empty" do
    music_library = MusicLibrary.new
    expect(music_library.all).to eq []
    end
  end
  
    it "responds to searches with empty list" do
      track = Track.new("title", "artist")
      expect(track.title).to eq "title"
      expect(track.artist).to eq "artist"
    end
   
  describe "format" do
    it "formats title and artist into one string" do
      track = Track.new("title", "artist")
      expect(track.format).to eq "title by artist"
    end
  end
end


# 1 - gets all tracks
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.all # => [track_1, track_2]

# # 2 - searches by keyword
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.search_by_title("Carte") # => [track_1]

# # 3 - searches by substring too
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.search_by_title("aes") # => [track_2]

# # 4 - if no results, search yields empty list
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.search_by_title("zzz") # => []

# # 5 - formats individual tracks
# track = Track.new("Carte Blanche", "Veracocha")
# track.format # => "Carte Blanche by Veracocha"