require 'pry'
class Artist
  attr_accessor :name, :songs
  @@count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(class_song)
    @songs << class_song
    @@count += 1
    class_song.artist = self
  end
  
  def add_song_by_name(song_name)
    class_song = Song.new(song_name)
    @songs << class_song
    @@count += 1
    class_song.artist = self
  end
  
  def self.song_count
    @@count
  end
end