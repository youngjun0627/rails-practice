class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :show]
  before_action :is_owner?, only: [:show]

  def index
    @posts = Post.all
  end
  def new

  end
  def create
    @post = Post.create(post_params)
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def is_owner?
    user_signed_in? && params[:id]==current_user
  end
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
