class Author
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title) #Create a new song obj for the name
    @posts << new_post       #push new song into artist's repetoire
    new_post.author = self
  end

  def self.post_count
    post_count = []
    @@all.collect do |author|
      post_count << author.posts
    end
      post_count.flatten.length
  end



end
