class CommentsController < ApplicationController

  def index
    @comments = Comment.where(post_id: params[:post_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params) # here we use our comment_params method
    @comment.post_id = params[:post_id]
    @comment.user = current_user

    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(comment_params) #here we use our comment_params method
      redirect_to :comments
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end


end
