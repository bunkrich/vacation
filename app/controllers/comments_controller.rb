 require 'pry'
 require 'byebug'

class CommentsController < ApplicationController
  def show
    @trip = Trip.find_by(id: params[:trip_id])
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

end
