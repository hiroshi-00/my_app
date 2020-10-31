class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:create, :destroy]
  
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      flash[:success] = "コメントしました"
      redirect_to post_path(@post) 
    else
      flash[:alert] = "コメントできませんでした"
      render post_path(@post) 
    end
  end

  def destroy
    @comment = Comment.find_by(params[:id])
    @comment.destroy
    flash[:alert] = "コメントを削除しました"
    redirect_to post_path(@post)
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
    
    def comment_params
      params.require(:comment).permit(:comment_title, :comment_content, :post_id) 
    end
end
