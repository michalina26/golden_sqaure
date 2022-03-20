require "music_library"
require "track"

RSpec.describe "Integration" do
  context "when we add a track to the library" do
    it "comes back in the list" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Sk8er Boi", "Avril Lavigne")
      track_2 = Track.new("Halo", "Beyonce")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end
  end  
    # ...
  context "when some tracks are added" do
    it "searches for tracks by full title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Sk8er Boi", "Avril Lavigne")
      track_2 = Track.new("Halo", "Beyonce")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("Sk8er Boi")
      expect(result).to eq [track_1]
    end
  end

  context "when some tracks are added" do
    it "searches for tracks by partial title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Sk8er Boi", "Avril Lavigne")
      track_2 = Track.new("Halo", "Beyonce")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("Sk8er Boi")
      expect(result).to eq [track_1]
    end
  end

  context "when a track is missing" do
    it "shows empty list" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Sk8er Boi", "Avril Lavigne")
      track_2 = Track.new("Halo", "Beyonce")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("Mamma Mia")
      expect(result).to eq []
    end
  end

end

  