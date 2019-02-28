class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all         #Should return an array of all song instances that have been created
    @@all
  end

  def artist_name
    if self.artist != nil    # knows the name of its artist
      return self.artist.name
    else
      return nil                  # returns nil if the song does not have an artist
    end
  end

end
