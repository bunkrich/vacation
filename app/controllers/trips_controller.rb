class TripsController < ApplicationController
  def show

    puts "🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡"
    a = current_user.id
    hello = Traveler.where(trip_id: params[:id], user_id: a)
        puts " 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁"
    puts hello.count
    puts " 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁 😃💁"


    @user = current_user
    @item = Item.new
    @trip = Trip.find_by(id: params[:id])
    @locations = []
    place_category = Hash.new
    if @trip.items.count > 0
      @trip.items.each do |t|
        if t.lookup
          # @locations.push(t.lookup)
          @locations << {place_id: t.lookup, category: t.category}.to_json
        end
        # if t.category
          # place_category["#{t.lookup}"] = t.category
        # end
        p "++++++++++++++++++++++++++"
        p @locations
      end
    end
    if @locations.count < 1
      @locations.push(@trip.lookup)
    end
    @locations.uniq!
    @days = []
    puts "@DAYS!!!!!!!!! 🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡"
    @trip.start_date.upto@trip.end_date do |day|
      @days.push(day.strftime("%A, %B %e"))
    end
    @days.push('TBD')
    puts @days
    puts "🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡"
    redirect_to "/trips" unless @trip
  end

  def new
    @user = current_user
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save
      Traveler.create(user: current_user, trip: @trip)
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

        # Check outbounds items
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
      params.require(:trip).permit(:name, :location, :lookup, :description, :start_date, :end_date)
    end
end
