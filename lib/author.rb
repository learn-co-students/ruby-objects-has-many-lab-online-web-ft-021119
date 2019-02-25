require "pry"

class Author
  attr_accessor :name, :posts
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    # binding.pry
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def self.post_count
    count = 0
    self.all.each do |authors|
      count += authors.posts.length
    end
    count
  end



end
