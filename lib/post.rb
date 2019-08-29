require 'pry'

class Post 
  attr_accessor :author
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.collect {|post| post.author}
  end
  
end