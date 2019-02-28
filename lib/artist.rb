require 'pry'
class Artist
  attr_accessor :name
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
    @songs << song        #let's us add a given song to the repetoire of an artist
    song.artist = self    #reciprocates relationship between artist and song, says "this song's artist(property of Song obj) is this specific Artist (obj)"
  end

  def add_song_by_name(name)
    rollin = Song.new(name) #Create a new song obj for the name
    @songs << rollin        #push new song into artist's repetoire
    rollin.artist = self    #let song 'know' that it belongs to artist
  end

  def self.song_count       #How can we get access to total number of songs from the artist class or the total number of posts from the author class?
    song_count = []
    @@all.collect do |artist|
      song_count << artist.songs
    end
    song_count.flatten.length
    # Expected to return 2
  end

end
