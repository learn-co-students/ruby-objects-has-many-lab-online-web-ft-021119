require "pry"
class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    # binding.pry
    @@all << self
  end


  def self.all
    @@all
  end

  def author_name
    if self.author != nil
      self.author.name
    end
  end



end
