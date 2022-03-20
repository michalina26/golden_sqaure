class TrackList

  def initialize
    @tracks = []    
  end

  def print_tracks
    p @tracks
    return @tracks
  
  end

  def add_track(track)
    @tracks.push(track) 
  end

end