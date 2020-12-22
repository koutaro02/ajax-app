class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.content(content: params[:content])
    redirect_to action: :index
  end
end