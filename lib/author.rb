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
  
end