class Post
  attr_accessor :title
  attr_reader :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author=(name)
    @author = name
  end
  
  def self.all
    @@all
  end
  
  def author_name
    #binding.pry
    return self.author.name if self.author != nil
    return nil
  end
end