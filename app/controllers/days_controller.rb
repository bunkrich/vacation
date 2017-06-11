class DaysController < ApplicationController
  def show
    @trip = Trip.find_by(id: params[:trip_id])
    @date = params[:id]
    @all_items = @trip.items
    @day_items = @trip.items.where('date BETWEEN ? AND ?', @date.to_date.beginning_of_day, @date.to_date.end_of_day)
  end
end
