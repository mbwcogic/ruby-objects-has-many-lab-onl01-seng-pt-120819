class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  def posts 
    Post.all.select {|post| post.author == self}
  end
  def add_post(post_name) 
    post  = Post.new(post_name)
    add_post(post)
end 
end 