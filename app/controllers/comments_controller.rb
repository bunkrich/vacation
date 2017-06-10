class CommentsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @trip
    else
      @errors = @comment.errors.full_messages
      render :new
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    if @comment.update(comment_params)
      redirect_to "/#{@comment.commentable_type.lowercase}s/#{@comment.commentable_id}"
    else
      @errors = @comment.errors.full_messages
      render :edit
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
    redirect_to "/#{@comment.commentable_type.lowercase}s/#{@comment.commentable_id}"
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy

    redirect_to '/'
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
