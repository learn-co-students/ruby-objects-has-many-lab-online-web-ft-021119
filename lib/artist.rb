class Artist 
  attr_accessor :name 
  attr_reader :song 
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  def songs 
    @songs 
  end 
  def add_song(new_song)
    new_song.artist = self 
    @songs << new_song
  end 
  def add_song_by_name(new_song)
    song = Song.new(new_song)
    song.artist = self 
    @songs << song
  end 
  def self.song_count
    Song.all.count
  end 
end 