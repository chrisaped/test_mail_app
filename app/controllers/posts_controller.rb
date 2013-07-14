class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.create(params[:post])
  	UserMailer.welcome_email.deliver!
  	redirect_to root_path
  end
end
