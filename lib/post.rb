
require 'pry'

class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @posts = []
  end

  def new(title)
    post = Post.new(title)
    @all << post
  end

  def self.all
    @@all
  end

  def author_name
    self.author = @author.name
  end

end
