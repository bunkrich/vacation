class VotesController < ApplicationController
  def show
  end

  def new
  end

  def create
    @vote = Vote.new(vote_params)

  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def vote_params
    params.require(:vote).permit(:up_down, :item_id, :user_id)
  end
end
