class Author
  attr_accessor :name, :posts
  @@count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(class_post)
    @posts << class_post
    @@count += 1
    class_post.author = self
  end
  
  def add_post_by_title(post_title)
    class_post = Post.new(post_title)
    @@count += 1
    @posts << class_post
    class_post.author = self
  end
  
  def self.post_count
    @@count
  end
end