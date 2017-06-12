class VotesController < ApplicationController
  def show
    @vote = Vote.find(item_id: params[:id])
  end

  def upvote
    @vote = Vote.find(item_id: params[:id])
    @vote.up_down += 1
  end

  def downvote
    @vote = Vote.find(item_id: params[:id])
    @vote.up_down -= 1
  end

  def new
  end

  def create
    binding.pry
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
      params.require(:vote).permit(:up_down)
    end
end
