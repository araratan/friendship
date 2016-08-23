class HomeController < ApplicationController
  before_action :authorize
  def new
    @post = Post.new
    @posts = Post.all
  end
end
