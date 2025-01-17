require 'pry'

class Author 
  attr_accessor :name, :posts 
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts 
    Post.all.collect {|post| post}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    post
    #binding.pry
  end
  
  def self.post_count 
    Post.all.count 
  end
  
end