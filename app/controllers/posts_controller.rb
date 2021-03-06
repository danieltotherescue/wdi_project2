class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category  = Category.all
  end

  def create
    @post = Post.new(post_params) # here we use our post_params method
    @post.user = current_user

    if @post.save
      redirect_to :posts
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @category  = Category.all
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params) #here we use our post_params method
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:headline, :occured, :content, :performer_website, :performer_info, :user_id, :image, :category_id)
  end


end
