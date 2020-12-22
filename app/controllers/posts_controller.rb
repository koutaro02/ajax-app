class PostsController < ApplicationController
  def index
    @posts = Post.find(1)
  end

  def new
    
  end

  def create
    Post.content(content: params[:content])
    
  end
end