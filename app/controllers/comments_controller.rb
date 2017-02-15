class CommentsController < ApplicationController
  def new
      @pid=params[:id]
    @comment = Comment.new
  end
  def create
    @comment=Comment.new(comment_params)
    if @comment.save
      
      redirect_to post_path(params[:id])
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:name,:content,:post_id)
  end
end
