class Post 
  attr_accessor :title, :author 
  @@all = [] 
  def initialize(title)
    @title = title 
    @@all << self 
  end 
  def self.all
    @@all 
  end 
  def title 
    @title 
  end 
  def author=(new_author)
    @author = new_author
  end 
  def author_name 
    author.nil? ? nil : author.name
  end 
end 