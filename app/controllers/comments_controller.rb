 require 'pry'
 require 'byebug'

class CommentsController < ApplicationController
  def show
    user = current_user
    @trip = Trip.find_by(id: params[:trip_id])
  end

  def new
    user = current_user
    @trip = Trip.find_by(id: params[:trip_id])
    @comment = @trip.comments.new
  end

  def create
    user = current_user
    trip = Trip.find_by(id: params[:trip_id])
    @comment = trip.comments.new(user_id: user.id, body: params[:comment][:body], trip_id: trip.id)

    if @comment.save
      puts "⭐️⭐️⭐️⭐️⭐️  COMMENT WAS SAVED ⭐️⭐️⭐️⭐️⭐️⭐️"
      puts @comment.inspect
      puts "⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️"
      redirect_to trip
    else
      puts "⭐️⭐️⭐️⭐️⭐️  FAIL ⭐️⭐️⭐️⭐️⭐️⭐️"
      puts @comment.inspect
      puts "⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️"
      @trip = Trip.find_by(id: params[:trip_id])
      @errors = @trip.errors.full_messages
    end
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
    defaults = {user: User.first}
    params.require(:comment).permit(:body, :user, :trip)
  end
end
