require 'pry'
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

  def author_name
    if self.author != nil    # knows the name of its author
      return self.author.name
    else
      return nil                  # returns nil if the post does not have an author
    end
  end

end
