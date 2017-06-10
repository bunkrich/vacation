class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
  end

  def create
    if params[:trip_id]
      @commentable = Trip.find(params[:trip_id])
    elsif params[:item_id]
      @commentable = Item.find(params[:item_id])
    end
    @comment = @commentable.comments.new(comment_params)
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
