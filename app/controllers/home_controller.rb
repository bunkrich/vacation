class HomeController < ApplicationController
  def index
<<<<<<< HEAD
  	@trip = Trip.last.items.first
    if logged_in?
      @user = current_user
    end
=======
  	@trip = Trip.find_by(id: 4)
    @locations = []
    @trip.items.each do |i|
      @locations.push(i.lookup)
      puts "*********************"
    end
    puts @locations
>>>>>>> origin
  end

  def about
  end
end
