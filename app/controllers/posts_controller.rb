class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post was created successful"
      redirect_to post_path(@post)
    else
      flash[:error] = "Post was not created"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post was updated successfull"
      redirect_to post_path(@post)
    else
      flash[:error] = "Post was not updated"
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    flash[:error] = "You have deleted this post"
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
