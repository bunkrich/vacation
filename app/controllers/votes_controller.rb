class VotesController < ApplicationController
  def show
    @vote = Vote.find(item_id: params[:id])
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
  end

  def upvote
    @vote = Vote.find(item_id: params[:id])
    @vote.up_down += 1
  end

  def downvote
    @vote = Vote.find(item_id: params[:id])
    @vote.up_down -= 1
  end
end
