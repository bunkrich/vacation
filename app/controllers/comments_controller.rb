  class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
    @user = User.first
    @trip = Trip.find_by(id: params[:trip_id])
    puts @trip.inspect
    @item = @trip.items.find_by(id: params[:item_id])
    puts @item.inspect
    @comment = Comment.new
    puts @comment.inspect
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @item = Item.find(params[:item_id])
    @user = User.first



    if params[:trip_id]
      if params[:item_id]
        @commentable = Item.find(params[:item_id])
      else
        @commentable = Trip.find(params[:trip_id])
      end
    @comment = @commentable.comments.build(comment_params)
      # if @comment.save
      #   redirect_to @trip
      # else
      #   @errors = @comment.errors.full_messages
      #   render :new
      # end
      redirect_to '/'
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    if @comment.update(comment_params)
      redirect_to "/#{@comment.commentable_type}s/#{@comment.commentable_id}"
    else
      @errors = @comment.errors.full_messages
      render :edit
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
    redirect_to "/#{@comment.commentable_type}s/#{@comment.commentable_id}"
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy

    redirect_to '/'
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :user)
  end
end
