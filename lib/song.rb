class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @genre = genre
  end

  def new_song(song)
    Song.new = song
    @@all<< song
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name
  end
end
