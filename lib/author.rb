class Author 
  attr_accessor :name
  attr_reader :posts
  
  def initialize(name)
    @name = name 
    @posts = [] 
  end 
  def posts 
    @posts 
  end 
  def add_post(post_name)
    @posts << post_name
    post_name.author = self 
 end 
  def add_post_by_title(title)
    new = Post.new(title)
    new.author = self 
    @posts << new 
  end 
  def self.post_count 
    Post.all.count 
  end 
end 