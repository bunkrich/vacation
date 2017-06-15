class VotesController < ApplicationController
  def show
    @vote = Vote.find(item_id: params[:id])
  end

  def create
    @vote = Vote.new(up_down: params[:up_down].to_i, item_id: params[:item_id], user: current_user)
    @trip = params[:trip_id]
    if @vote.save
      redirect_to trip_item_path(@trip, @vote.item)
    else

    end
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
