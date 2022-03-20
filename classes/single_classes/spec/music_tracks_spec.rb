require "music_tracks" 

RSpec.describe TrackList do
  it "adds a track to the track list" do
    track_list = TrackList.new
    track_list.add_track("Mamma Mia")
    expect(track_list.print_tracks).to eq ["Mamma Mia"]
    track_list.add_track("Complicated")
    expect(track_list.print_tracks).to eq ["Mamma Mia", "Complicated"]
    track_list.add_track("So Sick")
    expect(track_list.print_tracks).to eq ["Mamma Mia", "Complicated", "So Sick"]
  end
end