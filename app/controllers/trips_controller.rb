class TripsController < ApplicationController
  def show
    @trip = Trip.find_by(id: params[:id])
    redirect_to "/trips" unless @trip
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save
      redirect_to @trip
    else
      @errors = @trip.errors.full_messages
      render :new
    end
  end

  def edit
    @trip = Trip.find_by(id: params[:id])
    redirect_to "/trips" unless @trip
  end

  def update
    @trip = Trip.find_by(id: params[:id])
      if @trip.update(trip_params)
        redirect_to @trip
    else
      @errors = @trip.errors.full_messages
      render :edit
    end
  end

  def destroy
    @trip = Trip.find_by(id: params[:id])
    @trip.destroy

    redirect_to '/'
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :location, :description, :start_date, :end_date)
  end
end
