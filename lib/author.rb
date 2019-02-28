class Author
  attr_accessor :name


  def initialize(name)
    @name = name
    @posts = []
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
end
