class Song 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
 # def add_song(song)
    #@songs << song
   # song.artist = self 
 # end 
end 