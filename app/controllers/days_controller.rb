class DaysController < ApplicationController
  def show
    @user = current_user
    @trip = Trip.find_by(id: params[:trip_id])
    @date = params[:id]
    @day_items = @trip.items.where('date BETWEEN ? AND ?', @date.to_date.beginning_of_day, @date.to_date.end_of_day)
    @locations = []
    if @day_items.count > 0
      @day_items.each do |t|
        if t.lookup
          @locations << {place_id: t.lookup, category: t.category}.to_json
        end
      end
    end
    if @locations.count < 1
      @locations << {place_id: @trip.lookup, category: ""}.to_json
    end
    @locations.uniq!
    redirect_to "/trips" unless @trip
  end
end
