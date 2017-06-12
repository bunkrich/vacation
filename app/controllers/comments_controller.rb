  class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new

  end

  def create

  end

  def update

  end

  def edit

  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy

    redirect_to '/'
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :trip_id, :user_id)
  end
end
