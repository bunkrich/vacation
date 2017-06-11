class DaysController < ApplicationController
  def show
    @trip = Trip.find_by(id: params[:trip_id])
    @date = params[:id]
    @all_items = @trip.items
  end
end
