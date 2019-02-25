class Author
  attr_accessor :name
  @@all = []

  def initialize(title)
    @title = title
    @posts = []
  end

  def posts
    @posts
  end

  def add_song(song)
    @posts << post
    post.author = self
  end

  def add_post_by_name(title)
    post = Post.new(title)
    @title = title
    @posts << post
    post.author = self
  end

  def self.post_count
    @posts.length
  end

end
