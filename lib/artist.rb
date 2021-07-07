require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []


  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

 def add_song(song)
   song.artist = self
   @songs << song
 end

 def add_song_by_name(name)
   song = Song.new(name)
   song.artist = self
   @songs << song
 end

 def self.song_count
   count = 0
   @@all.each do |artist|
     count += artist.songs.length
   end
   count
 end


end
