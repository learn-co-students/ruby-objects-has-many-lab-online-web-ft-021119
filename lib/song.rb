class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
  end

  def new(song)
    Song.new = song
    @@all<< song
  end

  def name
    @name = self.name
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end

end
