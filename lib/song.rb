class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist=(name)
    @artist = name
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    return self.artist.name if self.artist != nil
    return nil
  end
end